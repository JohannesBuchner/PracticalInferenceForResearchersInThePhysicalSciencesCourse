Install
=============

NOTE: the installation step is expected to be done prior the beginning of the block course.
Please try to proceed with the installation using Option 1 or 2 below.
If failing that, the mybinder (Option 3) is available and does not require preparation.
However, it won't save the results of your computation unless downloaded. The running session is subject to idle timeout.

Each of the following three options should give you a jupyter notebook server.

Option 1: on your own computer
-------------------------------

First of all download the notebooks from the [page](https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse.git) by either
 - clicking `Code`, `Download ZIP`, or
 - cloning the GitHub repository with opening a terminal (`Git Bash` on Windows) and typing
 ```
 git clone https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse.git WORKING_DIRECTORY
 ```

You will need the following packages:

* cython (install this first)
* ultranest==3.2.0
* pystan==2.19.1.1
* cmdstanpy==0.9.76
* snowline==0.5.2 (requires pypmc, see `this issue <https://github.com/pypmc/pypmc/issues/66>`_)
* jupyter

Find an example on the installation process for several operation systems below.

### On Windoiws
1. Download and install Anacolda [link](https://www.anaconda.com/products/individual#windows)
2. Open Anaconda Prompt and execute the commands
```
conda config --add channels conda-forge # check with conda config --show channels
conda create -n inference-course python=3.7   # I have not checked this line, did via graphical interface
conda activate inference-course
conda install -y cython ultranest==3.2.0 pystan==2.19.1.1 cmdstanpy==0.9.76 jupyther
pip install snowline==0.5.2
install_cmdstan
``` 
3. Start jupyther notebook by typing
```
jupyther notebook
```
4. Novigate to the working folder and the open notebook.
The correct ipykernel is supposed to be chosen automatically.

The Dockerfile below gives an example of the installation process on Linux.

If you have problems, try to search online (stackoverflow, how jupyter notebooks work, etc),
and open a Github issue https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/issues

Option 3: with Docker
----------------------

Download the notebooks from the Github repository: https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse

Use the following text file (called "Dockerfile") and follow its instructions:

.. literalinclude:: Dockerfile

Option 3: Binder
----------------

* use this link https://mybinder.org/v2/gh/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/main
* the notebooks are in work/

