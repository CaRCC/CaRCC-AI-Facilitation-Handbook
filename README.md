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