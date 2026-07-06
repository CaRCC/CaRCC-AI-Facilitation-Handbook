# Data Preparation

## Definition

Data preparation for an AI/ML-based workflow involves acquiring, cleaning,
transforming, exploring, and curating raw data to make it suitable for further
processing and analysis. This includes gathering an understanding of how it was
created, how it was collected, identifying its type (numerical, categorical,
time series, mixed), why it is needed, what it signifies, its statistical
summary, what are its edge cases, and what type of problem needs to be addressed
with it. This stage is essentially an extension of the Problem Definition and
RCD Resource Planning phase.

## Examples of Specific Tasks

* Cleaning and curating raw global record of 4.3 billion tweets spanning time,
  geography, and language (geotweets) using Jupyter notebook for sentiment
  analysis with natural language processing (NLP) models, such as BERT.
* Converting raw sequencing data into a table of gene-level counts (or a count
  matrix), with rows representing genes and columns corresponding to samples,
  using HPC batch resources.
* Extracting and cleaning Slurm data using Jupyter notebook for predicting job
  wait times for an HPC cluster running a Slurm scheduler.
* Introducing a labeling scheme for behavioral sensor data and parallelizing the
  annotation workflow for downstream machine learning using Jupyter notebook,
  Label Studio, or Apache Spark.
* Evaluating cost model associated with data preparation and downstream storage
  requirements while utilizing on-prem vs cloud computing vs local device
  resources.

## User Tasks and Tools

| Task Area | Description | Tools/Resources |
| ----- | ----- | ----- |
| **Data Cleaning** | Remove duplicates, handle outliers, missing values, formatting issues, errors | OpenRefine, Pandas, Tidyverse, Scikit-learn, Jupyter |
| **Quality Assurance** | Ensure data quality, remove bias, check for completeness, consistency, & outliers | Custom scripts (Python/R), DVC (Data Version Control), FAIR principles |
| **Privacy** | Remove, mask, or swap identifiers, aggregate sensitive fields, document methods to support transparency and privacy compliance | OpenRefine, R (sdcMicro, anonymizer, custom scripts with tidyverse), Python (Faker, custom scripts with pandas), ARX |
| **Transformation** | Normalize, scale, augment (audio, image, video), index data, text tokenization, optimize storage & query performance | Scikit-learn, Pandas, spaCy, R (dplyr, stringr, spaCy, tidytext), Hadoop/Spark |
| **Exploratory Data Analysis** | Visualize distributions, spot anomalies, patterns, and correlations | Matplotlib, Seaborn, Plotly, Bokeh, Excel, R (dplyr, ggplot2) |
| **Feature Engineering** | Create/select/dimension reduce/encode/transform features, address multicollinearity | FeatureTools, Scikit-learn, Pandas, R (tidyverse, tidymodels, data.table) |
| **Reproducibility & Versioning** | Track data transformations and versions, ensure transparency | DVC, git |

## Researcher and Educator Challenges

This section highlights the challenges that a researcher or an educator might
face during this stage, which might warrant approaching their local RCD team and
utilizing RCD resources. For example,

* Dataset too large for local resources to process in a reasonable time due to
  reaching bottlenecks associated with storage and RAM constraints, CPU limits,
  disk I/O, etc.
* Crashes/errors due to memory limits, such as out of memory errors, on local
  device during large-scale ingestion or transformation
* Distributed processing required for parallelized tasks
* Data with privacy concerns, such as Personally Identifiable Information (PII),
  Controlled Unclassified Information (CUI), Data Use Agreement (DUA), data
  governed by Indigenous sovereignty frameworks that are unsuitable for
  local/cloud processing
* Cloud compute becomes cost-prohibitive for routine data preparation due either
  to the volume of data or frequency of jobs
* Performance requires GPUs or accelerators to enrich large datasets with
  metadata, such as subject- and keyword-enrichment of social sciences,
  humanities, and medical data

## RCD Involvement and Solutions

RCD facilitators can facilitate an AI project, during its data preparation stage
in multiple ways, to address the challenges faced by researchers and educators
and propose solutions, resources, and services to overcome those challenges.

| Challenge | RCD Implication | Solutions |
| ----- | ----- | ----- |
| Inadequate software stack for complex, multi-modal, distributed data prep involving multiple cores &/or accelerators | Limits scalability and analysis pipelines | Provide appropriate libraries and tools (e.g., Python, R, IDEs, Core Compilers) |
| Lack of shared infrastructure | Scattered data across uncoordinated systems | Enable shared filesystems, data management platforms, Globus |
| Privacy, compliance, or data-sharing issues | Risk of data misuse or non-compliance | Provide secure storage, access control, and support for regulatory compliance |
| Limited understanding of differential privacy concepts | Undermines data usability and trust in privacy protections | Provide guidance for using appropriate tools (e.g., Python libraries like opendp, smartnoise-synth, PyDP, diffprivlib), help researchers understand their appropriateness, limitations, etc. |
| Poor data quality or non-FAIR datasets | Hampers downstream modeling efforts | Promote FAIR data practices and offer assistance in data curation |

* Ensure data version control from the start (DVC, Git)
* Use lightweight libraries for small-scale/local testing before scaling up
* Monitor data pipeline bottlenecks (I/O, memory)
* Prefer reproducible workflows: containers, notebooks, and tracked
  transformations
* Type and amount of storage: local vs S3 vs shared POSIX vs parallel vs object
  store
* Storage size, file count, and directory structure can affect performance and
  data management downstream
* Consider data security classification and encryption needs (at rest, in
  transit, in use)
* Track cloud costs for data transfer and storage; budget for cloud egress if
  applicable

## Selected Learning Resources

* [DataCamp Guide to Data
  Augmentation](https://www.datacamp.com/tutorial/complete-guide-data-augmentation)
  - Techniques to augment data, when to perform it, its limitations, use cases,
    ethical implications, and tools needed to carry this out
* [*Data Science from Scratch* by Joel
  Grus](https://jcer.in/jcer-docs/E-Learning/Digital%20Library%20/E-Books/Data%20Science%20from%20Scratch%20by%20Joel%20Grus.pdf)
  - A book to build tools and implement algorithms geared around data science
    while providing a crash course in Python
* [*Feature Engineering for Machine Learning* by Zheng &
  Casari](https://cdn.bookey.app/files/pdf/book/en/feature-engineering-for-machine-learning.pdf)
  - A practical guide on how to transform raw data into meaningful features for
    carrying out effective machine learning
* [Anonymization: The imperfect science of using data while preserving
  privacy](https://doi.org/10.1126/sciadv.adn7053) - Review of anonymization
  techniques, their limitations, and their connection to privacy approaches such
  as differential privacy and synthetic data
* [Data Anonymization - Definition, Meaning,
  Techniques](https://www.geeksforgeeks.org/data-analysis/what-is-data-anonymization/)
  - Quick tutorial on understanding data anonymization, which data to anonymize,
    and how to execute it
