# Instructions
# ----------------
# 
# 1) Install docker on your computer (https://docs.docker.com/engine/install/)
# 
# 2) Place this text file in a empty directory. Open a terminal and enter this directory.
# 
# 3) run: $ docker build --rm -t jupyter/my-datascience-notebook
# 
#    This will build a docker container (similar to a virtual machine)
#    with all the python packages needed for the course.
# 
#    Its name (tag) is jupyter/my-datascience-notebook.
# 
# 4) run: $ docker run -p 8888:8888 -v "${PWD}":/home/jovyan/work jupyter/my-datascience-notebook
#    and open the stated URL http://127.0.0.1:8888/lab?token=.... in your browser
#    
#    This will run a JupyterLab server, where you can edit notebooks.
# 
#    -p 8888:8888 allows the container to use the web server port 8888 on your computer
#    -v makes the current directory accessible as the work/ directory
# 
# End of instructions.









# Below are commands that the "docker build" command uses.


# Start from a core stack version
#  https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
FROM jupyter/scipy-notebook:latest

# switch to user root
USER root
# install compiler for stan
RUN apt-get update -y && apt-get install -y build-essential

# switch to user (NB_UID=jovyan actually)
USER ${NB_UID}

# install the necessary packages for the course:
# Nested Sampling and MCMC
RUN conda install -y ultranest==3.2.0 pystan==2.19.1.1 cmdstanpy==0.9.76
# install Importance Sampling package (snowline, pypmc)
RUN pip install snowline==0.5.2 && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# compile and install the Stan MCMC engine
RUN install_cmdstan

# run jupyter lab server when the docker container is run
#ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]

# run from the home directory
WORKDIR "${HOME}"
