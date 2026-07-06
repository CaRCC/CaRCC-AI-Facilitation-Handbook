# Model Selection and/or Development

## Definition

Foundation Model Selection and/or Development is the process of identifying,
creating, training, and optimizing large-scale neural network architectures that
serves as the basis for the project's various AI applications. Work typically
includes:

* Evaluating existing foundation models - including Large Language Models (LLMs)
  and vision or multimodal models - and their license agreements (open
  weight/open source)
* Collecting and preprocessing massive datasets in preparation for large-scale
  model training, while adhering to the data management plan.
* Designing or adapting model architectures (with hundreds of millions or
  trillions of parameters), or tuning existing foundation models.
* Comprehensive AI Model Evaluation.

## Examples of Specific Tasks

* Decision: Select/Adopt an existing foundational model, ensuring its licensing
  terms permit the project's intended aims, or develop a new model if necessary.
* Selecting a pre-trained Time-Series Transformer model architecture and
  adapting it for integration into an existing HPC batch process to generate
  ensemble forecasts for regional climate prediction
* Adapting a general Whisper model by fine-tuning it on a secured GPU cluster
  with a proprietary dataset of legal depositions to achieve high accuracy when
  automatically transcribing highly specialized legal terminology
* Fine-tuning an open foundation model, such as Llama 3.x, using PEFT/LoRA
  techniques on internal scientific literature hosted on RCD-managed object
  store to create a domain-specific conversational AI tool for summarizing
  research findings
* Evaluate model for bias with a medical language model (like BERT) using tools
  like Fairlearn and RCD-provided JupyterHub to ensure equal prediction accuracy
  across diverse patient groups before deployment
* Creating a standardized Model Card for a fine-tuned ResNet model used in
  microscopic image classification, documenting key parameters, performance
  metrics (precision-recall), and publishing it through an RCD-supported data
  repository

## When Are RCD Resources Needed?

RCD resources become essential in several AI development and deployment phases:

**Pre-Training Phase:**

* When assembling domain-specific data beyond public datasets
* When privacy/security concerns prohibit using commercial cloud platforms
* When dataset size exceeds typical departmental storage capabilities

**Fine-Tuning Stage:**

* When adapting models like Llama 2 to institutional research domains
* When implementing PEFT/LoRA techniques on specialized datasets
* When balancing between Notebook/Google Colab and full cluster-scale approaches
* Executing distributed training across GPU/TPU clusters

**Evaluation & Iteration:**

* When developing rigorous domain-specific benchmarks
* When computing comprehensive bias/fairness metrics

**Deployment & Maintenance:**

* When model serving requires continuous data refreshing
* When building inference pipelines with research data integration

**Collaboration & Scaling:**

* When coordinating multi-institution data sharing initiatives
* When bridging on-prem resources with cloud academic grants

## RCD Challenges, Implications, & Solutions

| Challenge | Implications | Solutions |
| ----- | ----- | ----- |
| Training New Foundation Models from Scratch | Parameters: Billions to trillions; Data requirements: Petabytes of data; Computational resources: Multiple thousands of GPU/TPU hours; Training time and cost: Weeks to months, millions of dollars | Leveraging Open Weight Models; Using cloud academic infrastructure grants; Parameter-efficient fine-tuning methods |
| Model Selection Complexity | Different models (GPT-4, Claude, Gemini, LLaMA) have varying capabilities and resource requirements. Systematic evaluation frameworks | Domain-specific benchmarking; Balancing performance vs. resource constraints |
| Limited Computational Resources | Makes full model training impractical for most institutions; Restricts scope of AI research projects | Parameter-efficient methods (LoRA); Cloud Academic Infrastructure: Google, IBM, AWS/VAST/Azure/NVIDIA/NAIRR grants; Gradient accumulation techniques |
| Data Privacy and Security | Sensitive research data cannot use commercial platforms; Regulatory compliance issues | On-premises HPC solutions; Secure data preprocessing pipelines; Privacy-preserving fine-tuning approaches |
| Model Deployment Scale | Full-scale models require significant inference resources | Model quantization; Distributed inference architectures; Weights & Biases for tracking experiment performance |

## Tips, Tricks, and Troubleshooting

* Evaluate foundation model options thoroughly: Consider GPT series, BERT,
  Claude, Gemini, and LLaMA models based on your specific research needs and
  available resources
* Start with open foundation models access through Hugging Face Hub, Llama 2,
  Falcon, BLOOM, Ollama, or vLLM before attempting to train from scratch
* For smaller experiments with limited budgets, utilize Colab Pro or Kaggle
  before scaling to institutional resources. This staged approach preserves
  costly HPC allocations for production-scale training and lowers the barrier to
  entry for researchers new to AI workflows.
* When fine-tuning large models, leverage parameter-efficient techniques like
  PEFT/LoRA combined with memory optimization frameworks such as DeepSpeed or
  PyTorch FSDP to reduce memory requirements
* Use experiment tracking tools like Weights & Biases to monitor training
  progress and model performance
* For multimodal applications, consider specialized models like DALL-E, Stable
  Diffusion, or Flamingo rather than building custom solutions. For example,
  generating images from textual descriptions.
* When computational resources are limited, consider leveraging pre-trained
  weights rather than training from scratch, as this can reduce data
  requirements from petabytes to gigabytes or terabytes

## RCD Considerations

* Model Selection Framework: Choose between general-purpose models (GPT-4,
  Claude, Gemini) versus specialized models (AlphaCode, BloombergGPT) based on
  research domain requirements
* Computational Resource Planning: Assess whether fine-tuning (dozens to
  hundreds of GPUs) versus full training (thousands of GPUs/TPUs) is appropriate
  for research goals
* Data Infrastructure Requirements: Evaluate storage needs ranging from
  gigabytes (for fine-tuning) to petabytes (for pre-training)
* Model Adaptation Strategy: Determine if parameter-efficient adaptation
  techniques can meet research needs versus full model re-training
* Cross-institutional Collaboration: Consider data sharing initiatives and
  resource pooling for projects exceeding single-institution capabilities
* Deployment Environment: Balance between cloud academic infrastructure (Google,
  AWS, Azure) and on-premises solutions based on data privacy requirements and
  computational needs

## Selected Learning Resources

* Selected Models
    * [Transformer](https://arxiv.org/abs/1706.03762) (NLP),
      [BERT](https://arxiv.org/abs/1810.04805) (NLP),
      [GPT-4](https://arxiv.org/abs/2303.08774) (NLP),
      [Llama](https://arxiv.org/abs/2302.13971) (NLP),
      [Mistral](https://arxiv.org/abs/2310.06825) (NLP),
      [ResNet](https://arxiv.org/abs/1512.03385) (computer vision),
      [YOLO](https://arxiv.org/abs/1506.02640) (computer vision),
      [ViT](https://arxiv.org/abs/2010.11929) (computer vision),
      [DALL-E](https://openai.com/index/dall-e/) (Text to image),
      [Whisper](https://arxiv.org/abs/2212.04356) (Audio to text),
      [AlphaFold](https://www.nature.com/articles/s41586-021-03819-2)
      (bioinformatics and drug discovery)
* Online Coursera - [Machine Learning
  Yearning](https://info.deeplearning.ai/machine-learning-yearning-book) by
  Andrew Ng
* O'Reilly Book with examples for common ML approaches, not specific to
  Foundation Models - [Hands-on Machine Learning with Scikit-Learn, Keras, and
  TensorFlow](https://www.amazon.com/Hands-Machine-Learning-Scikit-Learn-TensorFlow/dp/1492032646),
  by Aurelien Geron
* [NVIDIA Deep Learning Institute online
  courses](https://developer.nvidia.com/join-nvidia-developer-program)
* Concise book on many valuable concepts in Machine Learning - [The Hundred-Page
  Machine Learning
  Book](https://www.amazon.com/Hundred-Page-Machine-Learning-Book/dp/199957950X)
  by Andriy Burkov
* O'Reilly Book with examples for evaluation metrics - [Evaluating Machine
  Learning
  Models](https://www.oreilly.com/content/evaluating-machine-learning-models/)
  by Alice Zheng
* Online Coursera - "[Machine Learning
  Specialization](https://www.coursera.org/specializations/machine-learning-introduction)"
  by Stanford instructors
* Online Coursera - "[Natural Language Processing
  Specialization](https://www.coursera.org/specializations/natural-language-processing)"
* Online Coursera - "[Deep Learning
  Specialization](https://www.coursera.org/specializations/deep-learning)" by
  Andrew Ng
