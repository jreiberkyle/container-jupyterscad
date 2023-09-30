# Jupyter SCAD Image

This project runs a jupyter notebook with [Jupyter SCAD](https://github.com/jreiberkyle/jupyterscad) and a pinned version of [solidpython2](https://github.com/jreiberkyle/SolidPython) within a [podman](https://podman.io/) container.

#### Security note

The podman container runs jupyter lab as root. This is necessary to share the
volume with the container (see [issue](https://github.com/containers/podman/issues/3990))
but it sounds like it is more secure than running a docker container as root.
