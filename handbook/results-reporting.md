# Results Interpretation and Reporting

## Definition

Results interpretation and reporting encompasses evaluating model outputs in
relation to research goals and domain context. This stage includes documenting
workflows and computing environments for reproducibility, communicating results
through visualizations and reports, and preparing materials for dissemination
and long-term preservation.

## Examples of Specific Tasks

* Evaluating model performance differences across low-income and high-income
  patient groups in a deep learning model trained to predict pediatric cancer
  relapse risk.
* Creating a model card with calibration plots and precision–recall curves
  generated in scikit-learn to document the performance and limitations of a
  pediatric cancer relapse prediction model.
* Preparing pediatric cancer clinical trial datasets and supporting
  documentation for controlled-access deposit in dbGaP following publication of
  a pediatric cancer relapse prediction model.

## Researcher and RCD Facilitator Tasks

| Category | Researcher Tasks | RCD Facilitator Support |
| ----- | ----- | ----- |
| Results Evaluation & Interpretation | Evaluate model outputs in relation to the research goals and domain context, including model performance, limitations, uncertainty, and potential bias in the findings. | Assist researchers with running and reproducing model evaluations across computational environments, including support for benchmarking, interpretability, and fairness assessment tools. |
| Reproducibility & Documentation | Document analytical workflows, code, parameters, software environments, dependencies, and processing steps needed to reproduce or validate results. Prepare AI reporting artifacts, such as model cards, that document model performance, limitations, and intended use. | Assist researchers with managing software environments, version control, containers, and reproducible workflows across computational systems. |
| Visualization & Reporting | Develop figures, dashboards, reports, and other outputs that communicate findings to technical and non-technical audiences. | Assist researchers with selecting tools and platforms for developing dashboards, visualizations, and other interactive reporting outputs. Support hosting and sharing of these outputs across computational and collaborative environments. |
| Dissemination & Preservation | Prepare datasets, code, models, and related research outputs for dissemination, reuse, or long-term preservation. Consider ethical, legal, and institutional requirements related to sharing and access. | Assist researchers with repository selection, metadata requirements, and access controls for long-term preservation of research outputs. Provide guidance on proprietary or closed file formats that may limit reuse, preservation, or interoperability. Recommend institutional resources for licensing guidance. |

## Selected Learning Resources

* Creating an Executable Paper is a Journey Through Open Science by Lasser - A
  reflective guide to publishing research articles with executable code and data
  for reproducibility. [[Publisher](https://doi.org/10.1038/s42005-020-00403-4)]
* Datasheets for Datasets by Gebru et al - A classic framework for documenting
  ML datasets. [[Publisher](https://doi.org/10.1145/3458723)]
* FactSheets for AI Services by Arnold et al - A structured reporting format for
  describing what an AI service does, how it was tested, and what users should
  know before adoption. [[Publisher](https://doi.org/10.1147/JRD.2019.2942288)]
  [[arXiv](https://doi.org/10.48550/arXiv.1808.07261)]
* Interpretable Machine Learning by Molnar - An open-source textbook with
  practical methods for explaining ML predictions.
  [[Website](https://christophm.github.io/interpretable-ml-book/)]
* Model Cards for Model Reporting by Mitchell et al - A classic guide for
  summarizing a model's purpose, performance, and limitations in a clear,
  structured format. [[Publisher](https://doi.org/10.1145/3287560.3287596)]
  [[arXiv](https://doi.org/10.48550/arXiv.1810.03993)]
* Ten Simple Rules for Reproducible Computational Research by Sandve et al - A
  classic guide with actionable tips for documenting the code, data, and
  analysis steps underlying reported results.
  [[Publisher](https://doi.org/10.1371/journal.pcbi.1003285)]
* TensorBoard: TensorFlow's Visualization Toolkit - A suite of web applications
  for visualizing model metrics, outputs, and comparisons to aid interpretation
  and reporting. [[Website](https://www.tensorflow.org/tensorboard)]
* Yellowbrick: Machine Learning Visualization - A categorized gallery of model
  interpretation plots with examples and usage notes for reporting and
  diagnostics. [[Website](https://www.scikit-yb.org/en/latest/)]
