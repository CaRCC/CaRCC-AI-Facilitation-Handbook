# CaRCC AI Facilitation Handbook

A practitioner-oriented guide for Research Computing and Data (RCD)
facilitators, mapping tools, decision points, and facilitation practices to
each stage of the AI project lifecycle — from problem definition through
model development, benchmarking, deployment, and results reporting.

**Live site:** <https://carcc.github.io/CaRCC-AI-Facilitation-Handbook/>

Copyright 2026 CaRCC.
Licensed CC BY-ND 4.0 https://creativecommons.org/licenses/by-nd/4.0/

## Contributing

Corrections, clarifications, and new material are welcome. See the
[Contributing](https://carcc.github.io/CaRCC-AI-Facilitation-Handbook/contributing/)
page for how to propose changes, whether by pull request or by opening an
issue.

## Authors

The CaRCC AI Facilitation Handbook is a collaborative product of the [CaRCC AI
Facilitation Materials Working
Group](https://carcc.org/ai-facilitation-materials-working-group/).

- Timothy Middelkoop, Ph.D. — Internet2 — ORCiD:
  [0000-0002-3183-3078](https://orcid.org/0000-0002-3183-3078)
- Lauren A. Michael, M.S. — Internet2 — ORCiD:
  [0000-0003-1481-4673](https://orcid.org/0000-0003-1481-4673)
- Anna Alber, MS — Chapman University — ORCiD:
  [0000-0003-1986-9921](https://orcid.org/0000-0003-1986-9921)
- Laura Briggs, MS — Information Consultant — ORCiD:
  [0009-0000-8817-6745](https://orcid.org/0009-0000-8817-6745)
- Manasvita Joshi, Ph.D. — Harvard University — ORCiD:
  [0000-0003-1134-7352](https://orcid.org/0000-0003-1134-7352)
- Atish P. Kamble, PhD — Boston University — ORCiD:
  [0000-0003-0861-5168](https://orcid.org/0000-0003-0861-5168)
- Don Richards — Johns Hopkins University — ORCiD:
  [0000-0001-8137-5397](https://orcid.org/0000-0001-8137-5397)
- Semir Sarajlic, MS — Vanderbilt University — ORCiD:
  [0000-0001-9821-0441](https://orcid.org/0000-0001-9821-0441)
- Jeffrey N. Valdez, MS — Georgia Institute of Technology — ORCiD:
  [0000-0002-1407-7741](https://orcid.org/0000-0002-1407-7741)
- Ying Zhang, MS — University of Florida — ORCiD:
  [0000-0003-4210-2104](https://orcid.org/0000-0003-4210-2104)
- Amira Kefi, PhD — University of Illinois Chicago — ORCiD:
  [0000-0001-6703-3796](https://orcid.org/0000-0001-6703-3796)

## Acknowledgement

This material is based upon work supported by the National Science Foundation
under [Grant No.
2436057](https://www.nsf.gov/awardsearch/show-award/?AWD_ID=2436057). Any
opinions, findings, and conclusions or recommendations expressed in this
material are those of the author(s) and do not necessarily reflect the views of
the National Science Foundation.

To cite the [CaRCC AI Faciliation Working Group's](https://carcc.org/ai-facilitation-materials-working-group/) Handbook on AI Faciliation:
> Joshi, M., Alber, A., Briggs, L., García Mesa, J. J., Kamble, A., Michael, L., Middelkoop, T., Sarajlic, S., Sokovic, A. M., Valdez, J., & Zhang, Y. (2026). The AI Project Lifecycle: Implementation Strategies and Tools. Zenodo. https://doi.org/10.5281/zenodo.19121611

PEARC'25 Paper presenting the concept framework:
> Alber, A., Briggs, L., Brunk, P., Joshi, M., Kamble, A., Kefi, A., Middelkoop, T., Sarajlic, S., Sokovic, A. M., Valdez, J., & Zhang, Y. 2025. AI Project Facilitation Guidance for Research Computing and Data (RCD) Professionals. In Practice and Experience in Advanced Research Computing 2025: The Power of Collaboration (PEARC '25). Association for Computing Machinery, New York, NY, USA, Article 70, 1–4. https://doi.org/10.1145/3708035.3736061

## Development

Dependencies are listed in [requirements.txt](requirements.txt).

To develop locally run the following to setup the software.
```bash
./setup.sh
```

And then run a local server available at http://localhost:8000
```bash
. ./.venv/bin/activate
mkdocs serve
```

Deploys to GitHub Pages are automatic: a push to `main` that touches the
handbook content, `mkdocs.yaml`, `refs.bib`, or `requirements.txt` triggers
[`.github/workflows/docs.yml`](.github/workflows/docs.yml), which runs
`mkdocs gh-deploy --force`. To deploy manually (e.g. to preview a build
before merging) run
```bash
. ./.venv/bin/activate
mkdocs gh-deploy --remote-name origin
```
