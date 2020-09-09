FROM jupyter/base-notebook

# make directory
RUN mkdir -p .jupyter/lab/user-settings/@jupyterlab/notebook-extension/ \
    && mkdir -p .jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/

# copy setting files
COPY tracker.jupyterlab-settings .jupyter/lab/user-settings/@jupyterlab/notebook-extension/
COPY shortcuts.jupyterlab-settings .jupyter/lab/user-settings/@jupyterlab/shortcuts-extension/
