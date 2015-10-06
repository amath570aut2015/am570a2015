

.. _software:

=============================================================
Software for the course
=============================================================

Chebfun, ATAP, and SMM codes
----------------------------

Trefethen's book "Approximation Theory and Approximation Practice" (ATAP) was
written using the Matlab "publish" facility and all of the files can be
downloaded from the
`ATAP website <https://people.maths.ox.ac.uk/trefethen/ATAP/>`_.  See Exercise
1.2 in the book for instructions on using these files.  

The Matlab scripts embedded in these files make heavy use of 
`Chebfun <http://www.chebfun.org/>`_, which contains tools for
working with Chebyshev polynomial approximations and overloads many Matlab
functions with versions that work on functions defined in this manner.

The book "Spectral Methods in Matlab" (SMM) has associated Matlab m-files
that can be downloaded from the
`SMM website <http://people.maths.ox.ac.uk/trefethen/spectral.html>`_.

You should download *Chebfun* and the files for the books and make sure
you can run them in Matlab.


Matlab
------

Matlab is available on the Applied Mathematics computing system for students
in this department.  Note that you can log into a departmental machine using
*ssh* in order to use Matlab remotely, e.g. from a Linux or Mac ::

    ssh -X netid@americano.amath.washington.edu
    $ matlab

This should open a Matlab window on your own computer.  Interacting with
this Matlab interface may be slow, so you may prefer::

    $ matlab -nojvm

which gives you the Matlab prompt in the terminal window instead.

Matlab is also available in the 
`Arts and Sciences Instructional Computing Lab
<http://depts.washington.edu/aslab/>`_ located in Communications B-022, and
also available via their `terminal server
<https://depts.washington.edu/aslab/remote/login.html>`_.

`The Student Version of Matlab
<http://www.mathworks.com/academia/student_version/>`_
is available at the bookstore.  This may be worth buying if you
think you will use Matlab regularly.

Python
------

Some of the work required for this class can be done in Python rather than
Matlab, but many assignments will require using *Chebfun* and/or the m-files
that accompany the books and so will be hard to replicate in Python.

Much of the functionality of *Chebfun* has been replicated in Python in the
package `pychebfun <https://github.com/pychebfun/pychebfun>`_.
Scroll to the bottom of that page for installation instructions.
See also `this notebook <http://nbviewer.ipython.org/6724986>`_ for more
examples.

To use Python effectively you will need `numpy <http://www.scipy.org/>`_ 
(which supports arrays and
many mathematical operations), `matplotlib <http://matplotlib.org/>`_
(matlab-style plotting).  The
`IPython shell <http://ipython.org/>`_ and/or 
`IPython notebook <http://ipython.org/notebook.html>`_
(recently replaced by the `Jupyter notebook <http://jupyter.org>`_)
are highly recommended for interactive work, see below.  

The `Anaconda Python Distribution <https://store.continuum.io/cshop/anaconda/>`_
is one easy way to get everything you need.  If you install this, you can
also then use the `conda package installer
<http://conda.pydata.org/docs/install/quick.html>`_ to install various
extensions easily.  

You should install Python 2.7 (not 3.x) to be compatible with what is used
in the notebooks posted for this this class.

Jupyter notebooks
-----------------

See http://jupyter.org for more information and documentation. 

See :ref:`5oct2015` for some videos using notebooks.

The notebook platform is rapidly being improved but as a result how things
behave often depend on what version you have installed.  If you installed
the Anaconda Python, you can insure you have jupyter and  are up to date 
via the bash commands::

    conda install jupyter
    conda update jupyter

Then in a bash shell you should be able to execute::

    jupyter notebook

to start the notebook server.  You can then navigate your browser
to the address shown when the notebook starts, e.g. ::

    http://localhost:8888/tree

If you want to easily run notebooks without installing any software, you
might try :ref:`smc`.  (But you can't run any notebooks that use Matlab,
since that is not installed on SMC.)


Using Matlab in Jupyter notebooks
---------------------------------

If you also have Matlab installed on your computer, you can run Matlab code
from the notebook by using the 
`pymatbridge <https://github.com/arokem/python-matlab-bridge>`_
module.  This allows you to start a cell with `%%matlab` and have it run in
Matlab to produce results, as illustrated in some of the notebooks for this
class.  

You can also install `matlab_kernel <https://pypi.python.org/pypi/matlab_kernel>`_
as a way to create a notebook that uses the Matlab kernel for all cells by
default, rather than Python, so you do not need to start cells with
`%%matlab`.  (In this case you can start a cell with `%%python` if you want
one cell to use Python instead.)

You should be able to get both `pymatbridge` and `matlab_kernel` via::

    pip install matlab_kernel

If you don't have the Python package manager `pip` but have the Anaconda
Python, try::

    conda install pip



Julia
-----

`ApproxFun <https://github.com/ApproxFun/ApproxFun.jl>`_ is a Julia
package based in part on `chebfun`.  There is not yet much documentation but
you can find some examples in the GitHub repository, e.g. 
`Manipulate ODEs and PDEs.ipynb <https://github.com/ApproxFun/ApproxFun.jl/blob/master/examples/Manipulate%20ODEs%20and%20PDEs.ipynb>`_.

For an introduction to Julia, see for example:

- http://julialang.org/learning/
- `Julia: A Fresh Approach to Numerical Computing <http://arxiv.org/abs/1411.1607>`_
  by Jeff Bezanson, Alan Edelman, Stefan Karpinski, Viral B. Shah

