# Cross-Cutting Considerations

Some considerations are not tied to any single stage of the AI project
lifecycle. The subsections below outline concerns that recur throughout a
project and across research domains.

> **Draft note:** Several subsections below (particularly *Regulated Research*
> and *Datacenter and Sustainability Considerations*) remain in outline form in
> the source working document. Outline points are preserved here as blockquote
> draft notes and still need to be written out.

## a. AI Ethics

AI ethics is a multidisciplinary field concerned with the fair, accountable,
transparent, safe, secure, and human-centered development and use of AI systems.
One common organizing frame in responsible AI is FAccT, which emphasizes
fairness, accountability, and transparency in sociotechnical systems. These
principles are closely related to additional concerns such as privacy and data
protection, safety and security, human rights, lifecycle governance, and
community governance.

AI ethics is not a single checkpoint but a set of concerns that recur at every
lifecycle stage, from problem definition through deployment and long-term
stewardship. For RCD facilitators, the practical contribution is rarely to set
ethical policy directly. Instead, RCD facilitators help build and coordinate the
technical and operational conditions that make ethical commitments enforceable:
auditable infrastructure, documented data provenance, access controls,
reproducible workflows, appropriate evaluation environments, and connections to
institutional offices responsible for compliance, privacy, security, and
research integrity. The subsections below outline core areas RCD facilitators
should be prepared to support.

**Fairness, Non-Discrimination, and Bias.** Fairness concerns whether AI systems
perform equitably across relevant groups, populations, contexts, or use cases.
Bias can enter at multiple stages, including data collection, labeling,
preprocessing, model selection, evaluation, deployment, and interpretation. RCD
decisions around data, software, platforms, and infrastructure can introduce,
amplify, or help mitigate bias at the data, model, and evaluation stages. RCD
facilitators can help researchers select and run tooling to detect disparate
performance across subgroups and ensure evaluation environments are
representative, documented, and reproducible. See the Benchmarking and Results &
Reporting sections for fairness, interpretability, and reporting tooling.

**Accountability and Responsibility.** Fairness and the other goals in this
section remain aspirational unless a project team can show how a result was
produced, who made key decisions, and who is responsible for addressing errors,
harms, or unexpected outcomes. From an RCD perspective, accountability is
supported through auditability, provenance, and documentation: audit logs of
experiment configurations, datasets, and results; version control for data,
code, and model artifacts; documented approval pathways; and structured
reporting such as model cards. These practices allow a team to trace biased,
anomalous, or non-reproducible outcomes back to their source and assign clear
ownership for remediation. See the Results & Reporting section for reporting and
documentation practices.

**Transparency and Explainability.** Transparency concerns whether the
assumptions, data sources, methods, limitations, and decision pathways of an AI
system are documented and accessible to appropriate stakeholders. Explainability
concerns whether model behavior and outputs can be interpreted in ways that are
meaningful for the research context. RCD facilitators can support transparency
and explainability by encouraging version-controlled workflows, documented
software environments, data and model provenance, experiment tracking,
reproducible pipelines, and structured reporting artifacts such as model cards
and datasheets. These practices help researchers explain not only what a model
produced, but how the result was generated.

**Privacy, Data Protection, Safety, and Security.** AI ethics also includes
protecting people, communities, institutions, and research participants from
inappropriate data exposure, misuse, or harm. For RCD facilitators, this means
helping researchers recognize when an AI project may involve sensitive,
regulated, proprietary, or otherwise restricted data; when model artifacts or
outputs may preserve sensitive information; and when safety or security risks
may require institutional review. Detailed guidance on regulated research,
secure environments, data governance, and compliance is addressed in the next
subsection.

**Long-term Stewardship.** Stewardship addresses what happens to research
artifacts after a project closes, including retention, preservation, continued
access control, reproducibility, archival responsibilities, and deletion
obligations. AI projects may produce derived artifacts such as trained models,
embeddings, logs, annotations, containers, workflow metadata, or evaluation
outputs that continue to carry governance, privacy, reproducibility, or
intellectual property implications after the original data processing is
complete. Where data is governed by external frameworks or agreements,
stewardship may also require custodianship arrangements and support for data
revocation.

**Indigenous Data Sovereignty.** Indigenous data sovereignty frameworks, such as
CARE (Collective Benefit, Authority to Control, Responsibility, Ethics) and
OCAP® (Ownership, Control, Access, Possession), should be considered throughout
the AI research lifecycle (Ruster, 2025). These frameworks may affect how data
is stored, accessed, reused, incorporated into model training workflows, and
retained within derived model artifacts. RCD infrastructure and support services
therefore play an important role in developing and supporting computing
environments, storage architectures, and data management workflows that align
with Indigenous-led governance requirements. Stewardship practices may also be
needed to support data revocation. Where community-managed hosting is not
feasible, custodianship arrangements may still be required to ensure that
governance expectations are maintained.

*Resources*

* ACM Conference on Fairness, Accountability, and Transparency (ACM FAccT):
  <https://facctconference.org/>
* Laufer et al. (2022), "Four Years of FAccT: A Reflexive, Mixed-Methods
  Analysis of Research Contributions, Shortcomings, and Future Prospects":
  <https://doi.org/10.1145/3531146.3533107>
* A practical checklist from the EU that helps teams ask concrete questions
  about seven ethical requirements for AI projects (2019, pp. 26–31). The final
  2020 version is less straightforward of a read:
  <https://digital-strategy.ec.europa.eu/en/library/ethics-guidelines-trustworthy-ai>
* NIST AI Risk Management Framework (AI RMF):
  <https://www.nist.gov/itl/ai-risk-management-framework>
* Mitchell et al. (2019), "Model Cards for Model Reporting":
  <https://doi.org/10.1145/3287560.3287596>
* Gebru et al. (2021), "Datasheets for Datasets":
  <https://doi.org/10.1145/3458723>
* CARE Principles: <https://doi.org/10.5334/dsj-2020-043>
* OCAP®: <https://fnigc.ca/ocap-training/>
* Ruster (2025): <https://doi.org/10.1609/aies.v8i3.36708>

## b. Regulated Research, Risks, and Compliance

> **Draft note (outline).** This subsection is an outline in the source
> document. Points to develop: introduction paragraphs pointing to RRCoP and
> similar resources for further detail; categories of regulated data and
> research and their requirements (e.g. regulated vs restricted; FERPA, HIPAA,
> PHI/PII, export control, controlled unclassified); characteristics of secure
> research environments (see the Internet2 "model" for secure research
> environments
> [series](https://internet2.edu/tag/secure-research-environments-series/)); and
> AI/ML technologies for data and model security, with pointers to external
> resources or examples.

**Data Governance.** Governance covers the policies and controls applied to
research data while a project is active: ownership, permissions, classification
and sensitivity (PII, PHI, CUI, FERPA, DUA), access control, and compliance with
institutional and regulatory requirements. RCD facilitators help map these
requirements to secure technical environments and enforce them through access
controls and monitoring.

## c. AI Platform Development as a Research Product

> **Draft note.** Include AI-Ready Data (vs ML-ready data in the Data
> Preparation section).

RCD facilitators increasingly encounter researchers whose projects depend on
shared AI platforms that the institution operates, such as centrally hosted
Large Language Model (LLM) services, Retrieval-Augmented Generation (RAG)
infrastructure, vector databases, model registries, and agentic frameworks.
These platforms behave as research products in their own right, with users,
releases, service expectations, and evolution driven by the projects that
consume them. Holding this cross-cutting view helps facilitators support
researchers at several lifecycle stages.

**Where to run an AI platform.** At problem definition, facilitators can help
researchers consider where their AI platform should run: on an institutional
shared platform, on a national resource such as the National AI Research
Resource (NAIRR) or ACCESS, on a commercial platform, or on project-built
infrastructure. The choice affects what cost, governance, and operational burden
the project carries versus what a platform absorbs, and is worth surfacing early
rather than after the project has committed to a path.

**Application as ongoing service.** At model application, platforms are ongoing
services rather than endpoints. Traditional Machine Learning (ML) platforms are
typically refreshed by retraining on newer data, while foundation-model
platforms additionally cycle through base-model upgrades, fine-tuning (often via
Parameter-Efficient Fine-Tuning (PEFT) techniques such as Low-Rank Adaptation
(LoRA)), continued pre-training, and re-embedding of indexed corpora.
Researchers should be encouraged to record which platform versions they used,
since results may not be reproducible once the platform evolves underneath them.

Facilitators are also well placed to recognize when a researcher's emerging
needs suggest platform thinking should be applied: recurring requests for vector
search, embedding generation, or fine-tuning; sensitive data routed to
commercial Application Programming Interfaces (APIs) for lack of a self-hosted
alternative; or multiple groups duplicating similar infrastructure. In those
situations, connecting researchers to the platform team, or surfacing the gap
when no platform yet exists, is part of the facilitation role.

*Resources*

* *Designing Machine Learning Systems* by Chip Huyen offers practical patterns
  for ML platform engineering applicable to research contexts. The MLflow Model
  Registry documentation describes one approach to model lifecycle and
  versioning. The Model Context Protocol (MCP) specification is an emerging open
  standard for agentic platform interfaces. The vLLM and SGLang projects
  document reference architectures for self-hosted inference platforms.

## d. Datacenter and Sustainability Considerations

For researchers looking to purchase or write grants for new equipment, current
data centers cannot support the most current and future GPU systems due to
power, cooling and space requirements. This is also the case for labs and
offices as power, cooling, heat, and noise are becoming serious issues for
people that are in the labs. Multiple systems also should consider high speed
and low latency networks (InfiniBand) to spread tasks across multiple systems
and to access high speed storage. Researchers need to work closely with Research
IT, who in turn need to coordinate closely with Enterprise IT and the Datacenter
to ensure compatibility with the infrastructure; you can no longer just "plug
in" a server. Researchers and Facilitators must recognize that equipment lead
times can be multiple years and require building and campus power and cooling
upgrades.

> **Draft note (outline).** Points to develop in this subsection: a quick
> overview of when a system crosses over from "desktop" to data-center, and from
> "server" to big AI box (rack density — a typical enterprise IT rack supports
> machines up to some limit per U; most GPU boxes exceed it); networking
> (InfiniBand is power hungry and GPU boxes often use one IB card per GPU); fast
> storage and how it is more expensive than "a bunch of spinning disks"; power
> limits (high voltage systems, AI data centers needing substation upgrades,
> grid reliability issues, full UPS for transients); direct liquid cooling; heat
> rejection (chiller, cooling tower, heat exchanger) and sustainability; and a
> wrap-up that it is too late to plan once you have bought it, and your system
> might be out of date by the time you can turn it on.

### GPU Capabilities

Sometimes the types of GPUs available to an institution could depend on their
data center infrastructure, in terms of the type of cooling supported there. If
a center supports only air cooling then that might restrict the type of GPUs
that can be made available to their users. This could add to the overall cost of
training a foundation model and might need to be moved to the cloud.

> **Draft note.** Should air- vs liquid-cooling support be stated more
> explicitly as one of the factors for what users can or cannot do on a cluster?
> It would be good to include a discussion on what types of GPUs are suitable
> for training vs inference, broadly relating the various types of AI workflows
> to GPU architectures — general principles for connecting a workflow to a GPU
> type (e.g. one might prefer NVIDIA RTX 6000s for inference but not for
> training compared to the latest Blackwells), citing the reason behind that.

### Resource Allocation

A lot of the time, supporting AI workflows could just mean figuring out a way to
execute these on a cluster without disrupting other people's work. This could
include creating a reservation, boosting a small list of jobs, or maybe even
creating a temporary partition based on the requirements.

> **Draft note.** It would be good to capture these techniques somewhere, as all
> of that is an extension of our earlier paper.

### Sustainability and Cost Optimization

> **Draft note.** Might be good to mention executing some dry runs to generate
> those metrics, if not already available.

## e. Anti-Patterns in AI Project Facilitation

The previous sections discussed the tasks, tools, tips, and RCD involvement in
each AI project lifecycle stage. Some challenges in AI project facilitation are
not tied to any single stage of the lifecycle. These anti-patterns are observed
throughout the project and across research domains. Addressing them early can
help both researchers and RCD facilitators avoid pitfalls, compliance issues,
and unsustainable solutions.

**Anti-Patterns for researchers:**

* Treat RCD as a help desk rather than a strategic partner in project planning,
  proposal preparation, and execution.
* Engage RCD only after local resources, commercial cloud credits, or ad hoc
  solutions have been exhausted.
* Purchase cloud resources before understanding data transfer, storage,
  security, licensing, and long-term operational costs.
* Assume that successful execution on a laptop and workstation implies
  scalability, reproducibility, or production readiness.
* Move sensitive or restricted data before assessing risks and confirming
  compliance with data governance, privacy, and institutional policies and
  requirements.
* Build workflows around a single individual's account, system, or undocumented
  environment.
* Focus only on model accuracy while overlooking reproducibility,
  interpretability, fairness, operational costs, sustainability, and regulatory
  requirements.
* Underestimate the effort and time required for data management, risk
  assessment, software engineering, documentation, monitoring, and maintenance.
* Select technologies based on popularity or novelty rather than project
  requirements, available resources, and sustainability considerations.

**Anti-Patterns for RCD facilitators:**

* Consider themselves solely as infrastructure providers rather than
  collaborators in proposal development, project scoping, and planning.
* Focus exclusively on technical solutions without understanding research or
  educational objectives.
* Emphasize infrastructure limitations instead of helping researchers find
  feasible alternatives.
* Treat AI projects same as other HPC workloads without considering AI-specific
  workflows and requirements.
* Assume researchers understand institutional policies, security requirements,
  and RCD resources and services.
* Provision computing resources without understanding project requirements,
  support expectations, or a sustainability plan.
* Consider primarily system utilization metrics while neglecting researcher's
  productivity, usability, and scientific outcomes.

**Anti-Patterns for both researchers and RCDs:**

* Defer the discussions and decisions about governance, compliance,
  sustainability, and operational ownership until late in the project.
* Fail to establish shared expectations regarding costs, timelines, team roles,
  responsibilities, and success criteria.
* Optimize for immediate results without consideration of maintainability,
  reproducibility, and sustainability.
* Overlook the importance of total cost of ownership, storage growth,
  maintenance, and future upgrades.
* Treat reproducibility and documentation as activities after publication or
  deployment.

AI project failures can result from delayed RCD engagement, inadequate planning,
and neglect of compliance and governance. Early partnership between researchers
and RCD facilitators is essential to reduce the risks and ensure successful
project execution and sustainable outcomes.
