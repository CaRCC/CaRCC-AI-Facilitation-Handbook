# Model Benchmarking, Quality Control, and Optimization

## Definition

**Model Benchmarking** (**MB**): evaluating AI models on well-defined tasks
using specified datasets, metrics, protocols, and hardware, to assess a model's
quality (e.g., accuracy), efficiency (e.g., latency, throughput, cost),
scalability, and robustness (reliability, bias).

**Quality Control** (**QC**): testing, auditing, and ongoing monitoring for
errors, biases, and inefficiencies relative to acceptance criteria for
performance, reliability, and/or ethical standards.

**Model Optimization** (**MO**): iterative process to improve an AI model's
performance, efficiency, and scalability for deployment while balancing accuracy
and costs.

## Examples of Specific Tasks

* **Benchmarking**: for a new medical AI model that was finetuned based on a
  BERT model, evaluate its performance on Named Entity Recognition (NER) for
  clinical notes. Run benchmarks to compare its performance against
  [BioBERT](https://academic.oup.com/bioinformatics/article/36/4/1234/5566506)
  or [ClinicalBERT](https://huggingface.co/medicalai/ClinicalBERT) using the
  same test dataset (e.g. the i2b2 benchmark dataset). Evaluate precision,
  recall, F1-score, inference latency, and throughput using identical hardware
  and software configurations.
* **Quality control**: The new model needs to be assessed for its robustness and
  trustworthiness. For the above medical AI model, add noise to the data input
  (e.g. spelling errors, irrelevant text) to test the model's robustness on
  medical NER tasks. If the precision is much lower with the noise, then the
  model is fragile. Run the model with the same prompt many times to see if it
  produces contradictory answers. Compare error rates across demographic groups
  to detect biases.
* **Optimization**: for issues identified in benchmarking and quality control,
  various optimizations can be applied to improve model's performance. For
  example, if the new model's domain performance is poor, e.g. low F-1 score or
  precision, the model needs further domain-adaptive fine tuning by increasing
  domain specific data sets or data augmentation and hyperparameter tuning using
  Optuna or Ray Tune tools. To optimize the latency and scalability, identify
  the bottlenecks and reduce the latency and operating cost by applying model
  quantization, optimizing batch sizes and data pipelines, adopting parallel and
  distributed computing for better throughput and resource utilization.

## User Tasks and Tools

| Key Tasks | Description | Example Tools, Techniques, and Resources |
| ----- | ----- | ----- |
| **MB: Objective Definition and Performance Metrics Selection** | Define benchmarking objectives and identify the metrics to evaluate model performance for the AI task and research goals. | Accuracy, precision, recall, F1-score, ROC-AUC, BLEU, ROUGE, BERTScore, perplexity, mAP, latency and throughput, Fairness Metrics, energy consumption, cost-per-inference, token-per-watt. |
| **MB: Dataset and Baseline Model Selection** | Select representative benchmark datasets and baseline models appropriate for the research domain, use case, tasks, and community standards. | **Datasets**: ImageNet, CIFAR, COCO, SQuAD, GPQA, MMLU, PubMedQA, MIMIC. **Baseline models**: BERT, GPT-OSS, Llama, ResNet, ViT, YOLO. **Data Resources**: Hugging Face Datasets, Kaggle, UCI ML repository. |
| **MB: Benchmark and Evaluation Framework Selection and Execution** | Select appropriate benchmark suites and evaluation frameworks, execute benchmark runs, collect performance metrics, and compare results against baseline and/or SOTA models. | **Benchmark suites**: MLPerf, SuperGLUE, MMLU, GPQA, HumanEval, SWE-bench, HELM. **Evaluation Frameworks**: LM Evaluation Harness, HELM, OpenAI Eval, DeepEval, Ragas, Hugging Face Evaluate. **Execution and Analysis**: Weights & Biases, TensorBoard, MLflow, OpenAI Evals, Scikit-learn, PyTorch Benchmark, NVIDIA Nsight. |
| **QC: Result validation and Error Analysis** | Validate the accuracy of the model's output and the results against ground truth, analyze errors, and detect overfitting/underfitting. | Deepchecks, Great Expectations, TensorFlow Model Analysis, Evidently AI, Scikit-learn, LIME, Confusion matrices, Calibration curves. |
| **QC: Robustness, Trustworthiness, Reliability Evaluation** | Evaluate model's fairness, biases, reliability, robustness, hallucinations, and consistency across use cases. | Robustness Gym, Adversarial Robustness Toolbox (ART), Fairlearn, IBM AI Fairness 360, SHAP, Captum, Google Model Cards Toolkit, Compliance.ai, InterpretML. |
| **QC: Compliance, Risk, and Operational Monitoring** | Assess compliance with institutional and regulatory requirements. Evaluate security and privacy risks. Monitor models for drifting and performance degradation. | NIST Privacy Framework, NIST AI Risk Management Framework, Audit logs, Prometheus, Grafana, Evidently AI, Alibi Detect, MLflow, ClearML. |
| **MO: Model Performance Optimization** | Improve model's accuracy, generalization, and robustness by hyperparameter tuning, architecture modification, feature engineering, data augmentation, and fine-tuning. | Optuna, Ray Tune, Hyperopt, Weights & Biases, PyTorch and TensorFlow libraries, MLflow, Scikit-learn, Parameter-Efficient Fine-Tuning (PEFT), Augmentor, Roboflow, NLPAug, TextAttack, AugLy. |
| **MO: Computation Efficiency Optimization** | Increase training and inference efficiency by optimizing resource utilization, memory usage, latency, and energy consumption; balance cost and model quality. | Quantization, Model pruning, TensorRT, NVIDIA NeMo Framework and Nsight, PyTorch Profiler, DeepSpeed, ONNX Runtime. |
| **MO: Scalability Optimization** | Scale the models and workflow for large-scale training and inference by using parallel and distributed computing environments. | PyTorch Distributed Computing, DeepSpeed, NVIDIA Megatron-LM and Triton Inference Server, vLLM, Kubernetes. |

## Researcher and Educator Challenges

**Model Benchmarking:**

* Acquire sufficient computing resources including CPU, GPU/TPU, memory, and
  storage at different scales for benchmarking.
* Select suitable benchmark datasets, benchmark suites and frameworks, baseline
  models for the research domain.
* Run benchmarks across different platforms with correct hardware & software
  stack.
* Need assistance with benchmark run time workflow configuration, job
  scheduling, resource allocation, and performance monitoring.
* Containerize benchmarking environments and track software dependencies to
  ensure reproducibility.

**Quality Control:**

* Assess compliance with institutional policies and regulations, navigate risk
  assessment process, and implement data access control to securely guard the
  sensitive or restricted data.
* Validate model performance, robustness, and reliability across diverse
  datasets and platforms; detect hallucinations and analyze failures.
* Build automated testing, monitoring, and auditing workflows for model
  validation and stress tests.
* Need assistance in workflow's computational performance tracking, data
  logging, and efficiency evaluation.

**Optimization:**

* Identify bottlenecks related to CPU and GPU utilization, memory, I/O, network,
  and software configuration.
* Select software tools for computation profiling and performance tuning.
* Optimizing training and inference performance through parallel and distributed
  computing and resource utilization efficiency.
* Scale up the workflow to large datasets, models, or larger user base with
  reliable performance and reproducibility.
* Select optimization strategies while balancing performance, cost, and energy
  consumption.

## RCD Involvement and Solutions

| Challenge | RCD Implication | Solutions |
| ----- | ----- | ----- |
| Assess and acquire computing resources to balance cost and performance | Long runtime, high cost, or resource availability may affect scalability and project progress. | Provide performance profiling tools to identify bottlenecks; recommend parallel and distributed computing configurations, on-prem or cloud options. |
| Select benchmarks and software stack suitable for the research domain | Inappropriate benchmarks may lead to misleading conclusions. | Help identify representative benchmark suites and datasets, baseline models, and evaluation metrics appropriate for the research area. |
| Reproducibility across platforms | Results may be difficult to verify, compare, or publish. | Provide robust software environment, containers, and version control. Configure, automate, and document the workflow. |
| Compliance, institutional policies, regulatory requirements | Non-compliance may jeopardize research results and institutions. | Support a secure computing environment that is in alignment with institutional policies. Provide access controls and log auditing. Assist with risk assessment. |
| Model's fairness, robustness, and reliability | Model outputs may be biased, inconsistent, and unreliable. | Provide software tools for and assist with fairness assessment, robustness testing, and bias evaluation. |

## Tips, Tricks, and RCD Considerations

* Select benchmark suites, data sets, baseline models, and evaluation metrics
  that are suitable for the research domain and reflect the state-of-the-art
  technologies and science. For example, MLPerf benchmark suite provides a set
  of standardized benchmarks and metrics for evaluating AI systems, including
  training and inference performance.
* Ensure reproducibility by using containers (Docker or Apptainer) with pinned
  dependencies. Version control datasets, models, prompts, software
  environments, and workflow configurations. Document hardware specifications,
  software versions and runtime parameters.
* Validate data integrity and security for sensitive or restricted data.
  Reinforce compliance with regulations and institutional policies.
* Evaluate both training and inference scalability and resource usage efficiency
  by collecting performance data on both CPU and GPU usage, networking, and
  storage using NVIDIA Nsight, TensorBoard, PyTorch Profiler and/or other
  performance evaluation tools.
* Use benchmarking and quality control results to guide optimization. Prioritize
  improvements that benefit model quality, robustness, and efficiency with
  reasonable costs.
* Balance performance, cost, and sustainability. Log resource utilization,
  energy consumption, operational costs when configuring the workflow and
  selecting optimization strategies.
* Evaluate robustness and reliability under noisy or adversarial inputs. Assess
  fairness across all relevant subgroups. Conduct stress testing to ensure
  reliability.

## Selected Learning Resources

* [MLCommons Benchmarks](https://mlcommons.org/benchmarks/): standardized ML
  benchmarks for AI training and inference, and latest benchmarking results.
* Stanford [HELM](https://crfm.stanford.edu/helm/): a holistic framework for
  evaluating foundation models.
* [LM Evaluation Harness (EleutherAI
  GitHub)](https://github.com/EleutherAI/lm-evaluation-harness): open-source
  toolkit for standardized benchmarking of LLMs.
* [LangChain evaluation frameworks](https://info.langchain.com/eval-frameworks):
  build systematic evaluations.
* [Ragas](https://www.ragas.io): a framework for RAG evaluation.
* [MMLU-Pro](https://huggingface.co/spaces/TIGER-Lab/MMLU-Pro): an enhanced
  benchmark for evaluating language understanding models.
* [Robustness Gym (Stanford
  GitHub)](https://github.com/robustness-gym/robustness-gym): framework for
  evaluating robustness, fairness, and reliability.
* [Adversarial Robustness Toolbox
  (IBM)](https://github.com/Trusted-AI/adversarial-robustness-toolbox): library
  for adversarial testing and robustness checks.
* [Fairlearn](https://fairlearn.org): Improve fairness of AI Systems.
* NIST: [AI Risk Management
  Framework](https://www.nist.gov/itl/ai-risk-management-framework).
* [PyTorch
  Profiler](https://docs.pytorch.org/tutorials/recipes/recipes/profiler_recipe.html)
  introduction and guide.
