FROM jupyter/datascience-notebook

WORKDIR /home/jovyan/work


USER $NB_UID

# R packages including IRKernel which gets installed globally.
RUN conda install --quiet --yes \
    'r-cluster' \
    'r-lattice' \
    'r-caret' \
    'r-tidyverse' && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

COPY . .
