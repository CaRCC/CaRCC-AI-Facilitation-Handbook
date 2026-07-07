# CaRCC AI Facilitation Handbook

Copyright 2026 CaRCC.
Licensed CC BY-ND 4.0 https://creativecommons.org/licenses/by-nd/4.0/

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

To deploy to GitHub run
```bash
. ./.venv/bin/activate
mkdocs gh-deploy --remote-name carcc
```

## Acknowledgement

To cite the [CaRCC AI Faciliation Working Group's](https://carcc.org/ai-facilitation-materials-working-group/) Handbook on AI Faciliation:
> Joshi, M., Alber, A., Briggs, L., García Mesa, J. J., Kamble, A., Michael, L., Middelkoop, T., Sarajlic, S., Sokovic, A. M., Valdez, J., & Zhang, Y. (2026). The AI Project Lifecycle: Implementation Strategies and Tools. Zenodo. https://doi.org/10.5281/zenodo.19121611

PEARC'25 Paper presenting the concept framework:
> Alber, A., Briggs, L., Brunk, P., Joshi, M., Kamble, A., Kefi, A., Middelkoop, T., Sarajlic, S., Sokovic, A. M., Valdez, J., & Zhang, Y. 2025. AI Project Facilitation Guidance for Research Computing and Data (RCD) Professionals. In Practice and Experience in Advanced Research Computing 2025: The Power of Collaboration (PEARC '25). Association for Computing Machinery, New York, NY, USA, Article 70, 1–4. https://doi.org/10.1145/3708035.3736061
