FROM fedora
WORKDIR /app
RUN dnf -y install openscad python gcc python3-devel git && \
    dnf clean all

RUN pip3 install jupyterlab
RUN pip3 install ipywidgets numpy-stl pythreejs
RUN pip3 install git+https://github.com/jreiberkyle/SolidPython.git@BOSL2-update
RUN pip3 install git+https://github.com/jreiberkyle/jupyterscad.git@8b6a0765e289d820583adc449ffc394408d00b35

# run as root to enable write permissions
# https://github.com/containers/podman/issues/3990
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
