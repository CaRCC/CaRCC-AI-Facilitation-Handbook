# Model Training and Tuning

## Definition

Optimizing model parameters and hyperparameters through iterative learning to
enable a model to generalize from data; includes configuring, executing and
improving the training process.

## Examples of Specific Tasks

* Training a CNN on medical images: Build a CNN in PyTorch that learns to detect
  pneumonia from chest X-rays. Chest-X-ray datasets typically provide grayscale
  images labelled "NORMAL" or "PNEUMONIA". These images contain subtle patterns
  distinguishing healthy lungs from pneumonia and CNN's convolutional layers
  learn to identify those patterns. Due to high-resolution images and large
  datasets, training is accelerated on GPU-enabled HPC resources.
* Fine-tuning a sentiment classifier: Use a pre-trained transformer (e.g., BERT)
  and fine-tune it on a sentiment-labelled review dataset such as IMDb. The IMDb
  dataset contains around 100 k movie reviews labeled positive or negative.
  Fine-tuning BERT on such a dataset adapts its language understanding to the
  sentiment classification task, but the model's computational requirements are
  high, so fine-tuning is often performed on GPU-enabled HPC resources
* Tuning dropout and batch size for better generalization: Dropout randomly
  disables a fraction of neurons during training, forcing the network to learn
  more generalized features and reducing overfitting. Selecting an appropriate
  dropout rate (often between 0.2 and 0.5) and adjusting batch size are both
  crucial: small batch sizes introduce noise in gradient updates, which acts as
  a form of regularization and can improve generalization while also reducing
  memory requirements. Larger batches converge faster but risk overfitting, so
  tuning involves balancing these effects.
* Conducting grid or Bayesian hyper-parameter search: To select optimal
  learning-rate and weight-decay values, practitioners often use grid search or
  Bayesian optimization. In grid search, you define sets of possible values
  (e.g., learning rates [0.001, 0.01, 0.1] and batch sizes [16, 32, 64]) and
  train a model on every combination; although exhaustive, this approach becomes
  computationally expensive with many parameters. Bayesian optimization builds a
  probabilistic model of the objective function and sequentially explores
  promising hyper-parameter regions, reducing the number of training runs.
  Hyper-parameter search is often automated with frameworks like Optuna or Ray
  Tune.

## User Tasks and Tools

| Task Area | Description | Tools/Resources |
| ----- | ----- | ----- |
| **Configuring training** | Set hyperparameters like learning rate, batch size, and epochs to control optimization | Python, TensorFlow, PyTorch, Keras, scikit-learn |
| **Monitoring training** | Track loss curves and metrics on training/validation sets to detect slow convergence or over-/under-fitting | Weights & Biases, MLflow, Comet.ml, SageMaker/Vertex AI dashboards |
| **Improving stability & generalization** | Apply regularization, dropout, early stopping, and mixed-precision techniques to prevent over-fitting. | Jupyter Notebooks, VS Code, PyCharm, Keras/TensorFlow callbacks |
| **Training execution** | Launch jobs on single or multiple GPUs/nodes and manage resources and checkpoints. | SLURM, Kubernetes, Singularity/Apptainer, Conda/Mamba |
| **Hyperparameter search & experimentation** | Define and explore hyperparameter spaces via grid, random, or Bayesian search; run multiple trials. | Ray Tune, Optuna, Hyperopt, Google Cloud AutoML, Azure AutoML |
| **Applying search strategies** | Use grid search, random search, Bayesian optimization or population-based training to refine models. | Ray Tune, Optuna, Hyperopt, Model repositories such as Hugging Face Hub |

## When Are RCD Resources Needed?

* The dataset or model is too large to train on local resources, requiring
  multi-GPU or multi-node distribution.
* Training jobs run for days or weeks, and local hardware lacks the reliability
  or fault tolerance needed.
* Hyperparameter searches or AutoML experiments generate dozens or hundreds of
  concurrent jobs that require HPC resources to be executed in a timely manner.
* During model training and tuning, I/O-intensive workloads (e.g., streaming
  TB-scale images or sequences) demand high-bandwidth parallel file systems to
  prevent data pipelines from becoming a bottleneck.
* Memory and storage requirements exceed local capacity, or checkpoints consume
  terabytes of fast storage.
* Cloud compute is cost-prohibitive for sustained experimentation, making
  on-premises RCD resources more economical.

## RCD Challenges, Implications & Solutions

| Challenge | RCD Implication | Solutions |
| ----- | ----- | ----- |
| Data & model growth | Large datasets (GB→TB) and rapidly growing model sizes overwhelm local storage and single-GPU memory. | Provide high-bandwidth parallel file systems; adopt distributed data loaders and model-parallel training frameworks. |
| Compute demands | Long training runs (days→weeks) and multi-GPU distribution increase the chance of hardware failures and require robust synchronization. | Use high-speed interconnects (NVLink/InfiniBand); schedule frequent checkpoints; budget for compute costs. |
| Experimentation complexity | Large hyperparameter spaces make manual tuning infeasible and generate numerous concurrent jobs. | Leverage automated Hyper Parameter Optimization (HPO) tools and job arrays; prioritize and batch experiments; monitor resource consumption |
| Compute architecture | Choosing between different GPU types affects throughput, cost and feasibility; limited CPU-to-GPU bandwidth creates bottlenecks. | Select hardware with adequate memory; use NVLink when possible; optimize data placement and prefetching. |
| Memory & storage | Model checkpoints and streaming large datasets demand substantial fast storage and high I/O throughput. | Employ burst buffers or local NVMe caches; compress checkpoints; stage data ahead of jobs. |

## Tips, Tricks, and Troubleshooting

* Design training workflows with scalability in mind—plan for distributed data
  and model parallelism before starting.
* Track experiments systematically using tools like MLflow or Weights & Biases;
  include hyperparameters, metrics and artifacts.
* Monitor I/O and compute utilization to identify bottlenecks; adjust batch
  sizes and prefetch settings accordingly.
* Containerize environments with Apptainer (formerly singularity) and lock
  package versions to ensure reproducibility.
* Checkpoint frequently and test restore procedures to minimize progress loss
  during hardware failures.

## RCD Considerations

* GPU type and count: availability of high-memory GPUs (A100/H100) and
  interconnects (NVLink/InfiniBand).
* Storage performance: local NVMe vs. parallel file systems (Lustre/GPFS) vs.
  object stores; dataset size and file count.
* Data security and compliance: encrypt data at rest/in transit; ensure PII
  (Personally Identifiable Information) or controlled-unclassified information
  is handled appropriately.
* Scheduling and fairness: prioritize critical workloads while allowing
  exploratory jobs to run with preemptible resources.
* Cost management: monitor energy consumption and cloud/on-prem costs; select
  efficient hardware.
* Software & algorithmic efficiency: use optimized libraries, mixed precision
  training.

## Selected Learning Resources

* [Hyperparameter Optimization in Machine Learning
  Models](https://www.datacamp.com/tutorial/parameter-optimization-machine-learning-models)
  (DataCamp) - A tutorial explaining what hyperparameters are, why tuning them
  matters, and introducing common search strategies.
* Bayesian Optimization: A more efficient alternative to grid or random search.
  [GPyOpt](https://gpyopt.readthedocs.io/en/latest/) (GitHub): A Python
  framework for Bayesian Optimization.
  [Spearmint](https://github.com/HIPS/Spearmint) (GitHub): Another well-known
  library for this method.
* Gradient-Based Optimization: Used for models with differentiable
  hyperparameters. [PyTorch Documentation on
  AutoGrad](https://pytorch.org/docs/stable/autograd.html) explains the
  automatic differentiation engine that makes this possible in PyTorch.
  [TensorFlow Documentation on
  Gradients](https://www.tensorflow.org/guide/autodiff) provides a guide to
  automatic differentiation in TensorFlow.
* [Population-Based Training
  (PBT)](https://docs.ray.io/en/latest/tune/examples/pbt_guide.html): Combines
  hyperparameter tuning and model training.
* [Finetuning Large Language
  Models](https://www.deeplearning.ai/short-courses/finetuning-large-language-models/):
  A short course by DeepLearning.AI teaching how to finetune large language
  models: when to use fine-tuning vs prompt engineering, how to prepare data,
  train, evaluate, and deploy your own LLM with updated weights.
* [Deep Learning](http://deeplearningbook.org/) (Goodfellow, Bengio &
  Courville): the full text of this MIT Press book is freely available online
