Install
=============

NOTE: the installation step is expected to be done prior the beginning of the block course.

Please try to proceed with the installation using Option 1 or 2 below.
If failing that, the mybinder (Option 3) is available and does not require preparation.
However, it won't save the results of your computation unless downloaded. The running session is subject to idle timeout.


Each of the following three options should give you a jupyter notebook server.

Option 1: on your own computer
-------------------------------

First of all download the notebooks from the `Github page <https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse>`_ by either
 - clicking `Code`, `Download ZIP`, or
 - cloning the GitHub repository with opening a terminal (`Git Bash` on Windows) and typing::

	git clone https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse.git MY_WORKING_DIRECTORY

You will need the following packages:

* cython (install this first)
* ultranest==3.2.0
* pystan==2.19.1.1
* cmdstanpy==0.9.76
* snowline==0.5.2 (requires pypmc, see `this issue <https://github.com/pypmc/pypmc/issues/66>`_)
* jupyter

To install these with conda:

* Download and install `Anaconda <https://docs.anaconda.com/anaconda/install/index.html>`_ or `miniconda <https://docs.conda.io/en/latest/miniconda.html>`_ 
* Open a terminal (Anaconda prompt in Windows). If conda is not active yet, run ``conda activate``.
* Add conda-forge repository: ``conda config --add channels conda-forge``. You can check with ``conda config --show channels``
* Install the packages::

    conda install -y cython ultranest==3.2.0 pystan==2.19.1.1 cmdstanpy==0.9.76 arviz==0.11.2 jupyter
    pip install snowline==0.5.2
    install_cmdstan

* In the folder with the notebooks, run the jupyter server::

	jupyter notebook 

* Navigate to the working folder and the open the notebook you want to work on.

The Dockerfile below gives an example of the installation process on Linux.

If you have problems, search online first (stackoverflow, how jupyter notebooks work, etc).
You can also `open a Github issue <https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/issues>`_

Option 2: with Docker
----------------------

Download the notebooks from the `Github repository <https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse>`_ (see option 1).

1. Install docker https://docs.docker.com/engine/install/

2. Download and place `this text file (called "Dockerfile") <https://raw.githubusercontent.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/main/Dockerfile>` in a empty directory. (You can also download it from the github repository)

3. Open a terminal and enter this directory.

4. run::

	docker build --rm -t jupyter/my-datascience-notebook .

  * This will build a docker container (similar to a virtual machine)
    with all the python packages needed for the course.
  
  * Its name (tag) is jupyter/my-datascience-notebook.

5. run:: 

	docker run -p 8888:8888 -v "${PWD}":/home/jovyan/work jupyter/my-datascience-notebook jupyter lab --ip=0.0.0.0 --allow-root
  
  * open the stated URL http://127.0.0.1:8888/lab?token=.... in your browser
  * This will run a JupyterLab server, where you can edit notebooks. Here some explanation of the command above:

    * `-p 8888:8888` allows the container to use the web server port 8888 on your computer
    * `-v` makes the current directory accessible as the work/ directory
    * `jupyter lab ...` starts the jupyter lab server

6. Work with notebooks in the work folder, you can upload the downloaded 
   notebook to there. You do not need to install anything anymore (remove first two cells).

Option 3: Binder
----------------

* use this link https://mybinder.org/v2/gh/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/main
* It takes a bit to start.
* The notebooks are in work/
* Edit freely. All changes will be forgotten when you close the browser. 
* Don't forget to download the notebooks when you are done. You can also upload them again to resume later.
* Beware that notebooks can time out when inactive and have to be restarted. 
