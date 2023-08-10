# poetry

`poetry` is a tool to manage virtualenv of Python projects.

## Install

Go to the online documentation on how to install `poetry` ([link][poetry-install]), or run the following command to automatically download and install it for Linux:

```bash
./install-on-linux.sh
```

It is recommended that you also install [`pyenv`](/tools/pyenv/README.md) and [`direnv`](/tools/direnv/README.md) to work with `poetry`.

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

If there's already a configuration for `$SOURCE_NAME`, you have to unset it first:

```bash
poetry config --unset http-basic.$SOURCE_NAME`
```

Otherwise, the config won't change.

Source for this solution: https://github.com/python-poetry/poetry/issues/3216#issuecomment-737878344
