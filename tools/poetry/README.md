# poetry

`poetry` is a tool to manage virtualenv of Python projects.

## Install

Go to the online documentation on how to install `poetry` ([link][poetry-install]).

Basically, do the following:

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

It is recommended that you also install [`pyenv`](/tools/pyenv/README.md) and `direnv` to work with `poetry`.

TODO: Link direnv to its dotfiles documentation.

[poetry-install]: https://python-poetry.org/docs/#installation

## Troubeshooting

### 401 Client Error: Unauthorized for url

This error may occur when you try to run `poetry install` on a project which has a `pyproject.toml` that sets up a private pypi.

Run the following command to fix that:

```bash
poetry config http-basic.$SOURCE_NAME $PYPI_USERNAME $PYPI_PASSWORD
```

Where:

* `$SOURCE_NAME` is the name configured under `[[tool.poetry.source]]`
* `$PYPI_USERNAME` and `$PYPI_PASSWORD` are username and password for your private pypi server.
