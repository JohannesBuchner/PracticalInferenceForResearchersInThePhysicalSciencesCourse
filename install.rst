Install
=============

Each of the following three options should give you a jupyter notebook server.


Option 1: Binder
----------------

* use this link https://mybinder.org/v2/gh/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse/main
* the notebooks are in work/

Option 2: with Docker
----------------------

Download the notebooks from the Github repository: https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse

Use the following text file (called "Dockerfile") and follow its instructions:

.. literalinclude:: Dockerfile


Option 3: on your own computer
-------------------------------

NOTE: Tutors are not there to help with your computer problems. 
Do not spend your or their time with broken software installations -- 
use one of the other options instead.

You will need the following packages:

* cython (install this first)
* ultranest==3.2.0
* pystan==2.19.1.1
* cmdstanpy==0.9.76
* snowline==0.5.2 (requires pypmc, see `this issue <https://github.com/pypmc/pypmc/issues/66>`_)

Look at the Dockerfile above for how to install with conda (pip commands are similar).

Download the notebooks from the Github repository: https://github.com/JohannesBuchner/PracticalInferenceForResearchersInThePhysicalSciencesCourse
