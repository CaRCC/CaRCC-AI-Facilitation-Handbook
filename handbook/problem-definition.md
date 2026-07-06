# Problem Definition and RCD Resource Planning

## Definition

Problem definition and RCD resource planning is a process of translating a
research question or objective into an AI project with clearly defined
requirements, legal constraints, resources, tools, and success criteria.
Researchers define the scientific and domain specific problems and expected
outcomes. RCD facilitators assist with policy compliance, evaluate technical
feasibility, and assess infrastructure requirements and sustainability. This
phase defines the scope of the project, identifies risks and compliance issues,
aligns research objectives with a project plan, and lays the foundation for the
subsequent stages of the project cycle.

## Examples of Specific Tasks

The examples below reflect a typical approach to initiate a project and begin
the planning within RCD context, which may originate from computing center's
initiatives or from engagements with researchers. These examples illustrate the
practical exercises that guide how an idea becomes a well defined and feasible
project.

* Create a one-page problem statement through an RCD lens based on the
  researcher's proposal, e.g., create a medical imaging model based on brain MRI
  images, including an overview of the research question and goals, AI problem
  formulation, technical requirements, hypothesis, objectives, and success
  criteria.
* Identify data sources, such as MRI image data source and volume, and clarify
  HIPAA requirements, data access control, and Institutional Review Board (IRB)
  process.
* Scope compute (CPU and GPU), storage, network and software needs, and also,
  compare on-premise vs. cloud feasibility.
* Partner with appropriate RCD professionals and institutional offices to align
  methods, resources, and responsibilities in support of the project's
  maintainability, reproducibility, and scalability.
* Create a project plan with milestones, timelines, staffing, targeted user base
  and size, and applicable "go/no-go" decision points.

## User Tasks, RCD Involvement, and Tools

| Planning Component | Researcher / PI Responsibility | RCD Facilitator Responsibility | Tools & Resources |
| ----- | ----- | ----- | ----- |
| Research question | Define the research question, hypothesis, scholarly contribution, and domain constraints. | Evaluate technical needs, ask clarifying questions, identify research areas, explore associated risks, and scaling challenges. | Standard project in-take templates, documentation tools such as Confluence, Microsoft Planner, and/or Smartsheet. |
| Success criteria | Define scientific, pedagogical, or operational success. | Help translate success criteria into quantitative technical requirements where appropriate. | Objective & Key Results (OKRs Tool), Lattice, Asana, Google Sheets, Effy, and/or Hive. |
| Stakeholder mapping | List key user community and size, collaborators and partners. | Help identify access control mechanisms, concurrency requirements, and cybersecurity risks. | Stakeholder maps, RACI charts, Atlassian tools. |
| Data | Identify data sources, types, sizes, ownership, permissions, sensitivity, and expected growth. | Assess data storage, transfer, access control, backup, retention, and compliance implications. | DMP Tool, Snowflake, MongoDB, DataHub, and/or Tableau. See Section 3. |
| Methodology | Identify AI/ML approaches for data analysis or modeling with domain rationale. | Advise on feasibility, available software, model/runtime constraints, and scalable workflow options. | Semantic Scholar and Elicit for literature research. See Section 4 on RCD involvement. |
| Compute resource plan | Describe expected workload, timelines, interactivity needs, and deadlines. | Estimate CPU/GPU, memory, storage, job scheduling, cloud/on-prem options and costs. | Nsight Profiler, Schedulers (Slurm), Grafana, DeepSpeed, Infracost, and/or Kubecost. |
| Research Ethics and compliance | Determine whether IRB, DUA, HIPAA, CUI, FERPA, Indigenous data governance, or sponsor rules apply. | Route to appropriate institutional offices and map requirements to secure technical environments. | Institutional risk and compliance offices and policies, IRB review, NIST Privacy Framework, and institutional AI policies. |
| Project plan | Create a comprehensive project plan based on the above, with team roles, deliverables, timeline, and RCD resource plan. | Identify technical milestones, dependencies, hardware and software tools, feasibility and risks, and checkpoints. | Confluence/JIRA, Asana, Microsoft Project, Smartsheet, Trello, and/or GitHub Projects. |
| Sustainability | Decide whether the work is exploratory, grant-funded, production-facing, or long-term. | Advise on maintainability, reproducibility, handoff, support model, and operational costs. | MLOps tools, GitHub, Prometheus, Grafana, and/or Infracost. |

## When Should Researchers Engage RCD?

Researchers benefit most from RCD engagement early in the process, e.g., problem
defining and project planning stage to ensure project's feasibility, compliance,
and long-term sustainability.

Engagement is especially important before:

* Securing computing resource, local, cloud, or hybrid computing
* Acquiring, accessing, and transferring restricted or sensitive data
* Selecting AI approach that is appropriate for the research objectives
* Promising GPU-heavy deliverables
* Submitting a grant budget
* Committing to a deployment model
* Building a workflow that is reproducible and require version control and
  long-term sustainability

Specific triggers include:

* Proposal or budget planning requires compute, storage, or cloud cost
  estimates.
* Data may include PII, PHI, CUI, FERPA, DUA-restricted, Indigenous-governed, or
  otherwise sensitive information.
* The project requires GPUs, large memory nodes, parallel storage, secure
  enclaves, or long-running workflows.
* The workflow may need to move from prototype to shared service, publication
  pipeline, or production-like deployment.
* The researcher is unsure whether local, campus, cloud, or hybrid
  infrastructure is appropriate.
* Software dependencies, licenses, and containerization.
* Projects require workflow automation, reproducibility, and scalability.

In the following sections of the lifecycle stages, we will provide various RCD
challenges, implications, and solutions within the context of each of the AI
project lifecycle stages.

## Tips, Tricks, and Troubleshooting

* Engaging RCD facilitators at this initial stage is critical!
* Draft a problem statement and project plan early and revise iteratively as
  feedback from stakeholder engagement comes in ("feedback is a gift!")
* Conduct data management and risk evaluation early. It could be a determining
  factor of the project starting date.
* Define what success looks like and select appropriate success metrics.
* Keep a log of assumptions, constraints, and risks to avoid dead ends and
  wasted team effort.
* Avoid any acquisitions/commitments to compute/data purchases before engaging
  RCD facilitators.
* Ensure the decisions made during this stage support the project's long-term
  maintainability and sustainability.

## RCD Considerations

* Alignment and feasibility of compute and storage sizing and budgeting with the
  project's objectives.
* Data governance, risks, and management plan
* Compute resource (hardware and software) plan
* Deployment plan that includes environments, accounts, support channels, data
  movement strategy

## Selected Learning Resources

* AI Project Facilitation Guidance for Research Computing and Data (RCD)
  Professionals: <https://doi.org/10.1145/3708035.3736061>
* Compliance Requirements in Research: <https://dl.acm.org/doi/10.1145/3704286>
* Data Management Planning Tool (DMPTool): <https://dmptool.org/>
* NIST AI Risk Management Framework (AI RMF):
  <https://www.nist.gov/itl/ai-risk-management-framework>
* NIST Privacy Framework: <https://www.nist.gov/privacy-framework>
* The FAIR Guiding Principles for Scientific Data Management and Stewardship:
  <https://www.go-fair.org/fair-principles/>
* CARE Principles: <https://www.gida-global.org/care>
* OCAP Principles: <https://fnigc.ca/ocap-training/>
