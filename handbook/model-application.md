# Model Application

## Definition

Model Application packages and deploys a trained model with its dependencies and
integrates it into a production or research environment where it can serve end
users or downstream systems by performing inference on new data. It includes
managing infrastructure and computational resources for **batch (B)**,
**interactive (I)**, or **real-time (RT) execution modes**, along with
monitoring, versioning, and scaling to ensure reliability, performance, and
compliance within research and operational workflows.

Platform-level concerns (shared institutional AI platforms, AI-ready data,
ongoing service lifecycle) are addressed in [Cross-Cutting
Considerations](cross-cutting.md), AI Platform Development as a Research
Product.

## Examples of Specific Tasks

* Creating a chatbot or AI agent using a trained model to provide real-time
  responses for research or user-facing applications.
* Running a climate prediction model overnight on HPC batch resources to
  generate ensemble forecasts.
* Deploying an NLP model in an interactive JupyterHub session for text
  annotation experiments.
* Hosting a real-time image classification model on an edge device for a lab's
  microscopy pipeline.
* Using a container registry to launch a model inference service for genomics
  workflows.

## User Tasks and Tools

| Mode | Task Area | Description | Tools/Resources |
| ----- | ----- | ----- | ----- |
| **B, I** | **Model Inference for Simulations and Research Analysis** | Run trained AI or ML models to generate predictions or insights across scientific simulations and data-driven research workflows. | TensorFlow, PyTorch, Slurm, Apptainer/Singularity |
| **B, I** | **Model Packaging and Environment Setup** | Bundle trained models with their dependencies, configurations, and runtime environments to ensure portability and reproducibility across HPC, cloud, and edge systems. | Apptainer/Singularity, Docker, Conda, MLflow Models, ONNX |
| **B** | **Data-Processing Pipelines** | Schedule or automated processing of research datasets. | Apache Spark MLlib, Apptainer/Singularity |
| **I** | **Web-based model testing** | On-demand testing of models in browser or web app. | Jupyter Notebook/JupyterLab, Hugging Face Spaces |
| **I** | **Interactive visualization** | Explore and interpret model results visually. | JupyterHub/JupyterLab, TensorBoard, Weights & Biases (W&B), Streamlit/Dash |
| **RT** | **API-based predictions** | Ad-hoc predictions and queries via API. | FastAPI, BentoML, Flask, KServe, Seldon |
| **RT** | **Robotics (lab automation, drones)** | Low-latency model inference for robotics or automated equipment. | TensorFlow Serving, NVIDIA Triton, ONNX Runtime |
| **RT** | **Autonomous systems** | Immediate decision-making in self-driving, sensor networks, etc. | TorchServe, Kubernetes, ONNX Runtime |
| **RT** | **Conversational AI Tools** | Domain-specific chatbots or assistants with instant responses. | Hugging Face Inference API, NVIDIA Triton, Ollama, vLLM, LiteLLM |
| **B, I, RT** | **Model Management and Monitoring** | Track, version, and monitor model performance and lifecycle across batch, interactive, and real-time deployments to ensure reliability, reproducibility, and continuous improvement (for project-deployed models; platform-managed models are addressed in the Cross-Cutting section) | MLflow, ClearML, W&B, Neptune.ai |

## When Are RCD Resources Needed?

* Models outgrow local resources
    * Large or scaling models (e.g., serving a self-hosted Large Language Model
      for project use) exceed workstation or single-GPU setups
    * High compute, memory, or storage demands (e.g., multi-GPU training,
      distributed inference, vector databases) require RCD-managed HPC or cloud
      resources.
* Workflow management and automation
    * Manual pipelines are too slow.
    * Batch automation or distributed inference needed for tasks like nightly
      retraining.
* Real-time inference performance becomes essential
    * Low-latency applications are required like wildfire-mapping drones or
      autonomous robotics.
    * RCD resources enable real-time inference through accelerators and
      orchestration platforms.
* Compliance and security constraints
    * Projects subject to regulatory or institutional oversight require secure
      environments and controlled access.
    * Projects with HIPAA, CUI, or GDPR constraints require isolated HPC or
      cloud environments aligned with compliance standards.
    * Studies under IRB approval may fall within lower-security enclaves but
      still require RCD-managed resources for proper data handling, auditing,
      and access control.

## RCD Challenges, Implications, & Solutions

| Category | Challenge | RCD Implication | Solutions |
| ----- | ----- | ----- | ----- |
| **Infrastructure & Hardware** | **Containerization & Batch Processing** | Work with researchers to support diverse research workflows that require scalable, reproducible execution across HPC and cloud environments. | Use Slurm for scheduled batch jobs on HPC and Kubernetes or Apptainer/Singularity for containerized and scalable model serving. |
| **Infrastructure & Hardware** | **Storage & I/O** | Balance user performance expectations with infrastructure limits when large datasets create I/O contention. | Leverage specialized storage systems (e.g., VAST, NetApp) designed for mixed AI workloads and provide user guidance on data staging. |
| **Infrastructure & Hardware** | **Networking & Latency** | Coordinate with network teams to ensure sufficient bandwidth and placement for low-latency AI workloads. | Use high-bandwidth interconnects (InfiniBand, 100/200 GbE), edge runtimes (ONNX Runtime, TensorRT), and optimized job placement for robotics, drones, and conversational AI. |
| **Software & Workflows** | **Frameworks & Platforms** | Maintain scalable inference frameworks appropriate for researchers while supporting varied user familiarity and environments. | Offer maintained installations of TensorFlow Serving, TorchServe, and ONNX Runtime for consistent, supported deployment options. |
| **Software & Workflows** | **User Interfaces & Accessibility** | Lower the barrier for researchers to test and deploy models, including LLMs, interactively without complex DevOps setup. | Provide Hugging Face Inference API, Ollama, JupyterHub/JupyterLab, and Streamlit/Dash for accessible model testing and sharing. |
| **Governance & Operations** | **Security Compliance** | Help interpret and implement security and data compliance standards for regulated projects. | Ensure HIPAA/GDPR/CUI compliance through encryption at rest/in transit and isolated, policy-aligned compute environments. |
| **Governance & Operations** | **Lifecycle Monitoring** | Help researchers ensure models remain auditable, versioned, and reproducible across their lifecycle. | Recommend using MLflow and ClearML to automate tracking, versioning, and drift monitoring for deployed models. |

## Tips, Tricks, and Troubleshooting

* Prevent idle resource waste
    * Actively monitor batch and real-time jobs.
    * Adjust schedules and resources to minimize GPU waste.
* Optimize early for deployment needs
    * Profile and optimize on target hardware early, since deployment hardware
      may differ from training systems.
    * Tune batch sizes, threading, and model precision during inference to match
      production environments.
    * Reduce latency by placing jobs close to data (node locality, caching
      strategies).
    * Test inference batch sizes to balance throughput vs. response time for
      real-time applications.
* Plan storage and tracking from the start
    * Use parallel file systems for large data I/O (e.g., training checkpoints).
    * For metadata-heavy workloads like Anaconda or Python virtual environments,
      use local SSDs on compute nodes or storage like NetApp or VAST.
    * Version models and experiments early with MLflow and ClearML.
* Monitor and update deployed models
    * Continuously track performance, drift, and fairness over time.
    * Schedule periodic retraining or model refreshes to maintain accuracy and
      compliance.
    * Integrate lifecycle monitoring tools (e.g., MLflow, ClearML) to ensure
      reproducibility and reliability across the model's lifecycle.
* For models consumed through shared institutional platforms, update cadence and
  version tracking are typically platform responsibilities (see the
  Cross-Cutting section).

## RCD Considerations

* Compute and orchestration
    * Match the deployment method to reliability, latency, and scaling
      requirements (e.g., batch jobs on HPC clusters, interactive notebooks,
      REST APIs, or edge devices).
    * Use CPUs for low-throughput batch jobs, GPUs/accelerators for
      high-throughput or low-latency tasks.
    * Containerize models (Apptainer, Docker) and manage with Slurm or
      Kubernetes.
    * Incorporate resilience mechanisms such as liveness probes, auto-restart
      policies, and cached fallback models during deployment to maintain service
      continuity and recover from failures or GPU shortages.
* Storage and I/O
    * Parallel file systems for large model/data I/O (Lustre).
    * Object stores, NVMe SSDs, or vector DBs for real-time or metadata-heavy
      workloads (e.g., VAST).
* Network and latency
    * Optimize interconnects (InfiniBand, high-speed Ethernet) to reduce
      inference bottlenecks.
    * Use node locality and caching strategies to minimize data transfer
      overhead for real-time tasks.
* Security and compliance
    * Encrypt data at rest/in transit.
    * Deploy HIPAA, GDPR, or CUI-aligned environments with secure APIs and
      access controls.
* Monitoring and efficiency
    * Track drift and performance (MLflow, ClearML, or Weights & Biases).
    * Apply quotas and scheduling to ensure fairness and minimize idle GPU use.

## Selected Learning Resources

* [Slurm Quick Start Guide](https://slurm.schedmd.com/quickstart.html) -
  Step-by-step intro to running batch jobs on HPC
* [JupyterHub Documentation](https://jupyterhub.readthedocs.io/en/stable/) -
  Deploying interactive AI workflows at scale
* [TorchServe Tutorials](https://pytorch.org/serve/tutorials.html) - Examples
  for serving PyTorch models in production
* [TensorFlow Serving Guide](https://www.tensorflow.org/tfx/guide/serving) -
  Steps for deploying TensorFlow models with REST/gRPC APIs
* [NVIDIA Triton Inference Server
  Tutorials](https://developer.nvidia.com/nvidia-triton-inference-server) -
  Walkthroughs for deploying scalable inference on GPUs/CPUs
* [MLflow
  Tutorials](https://mlflow.org/docs/latest/tutorials-and-examples/index.html) -
  How-to guides for tracking, packaging, and deploying models
* [NIST AI Risk Management
  Framework](https://www.nist.gov/itl/ai-risk-management-framework) - Practical
  guidance for compliant, trustworthy AI deployment
