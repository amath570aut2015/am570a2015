

.. _homework1:

=============================================================
Homework 1
=============================================================


Submit via the `Canvas page
<https://canvas.uw.edu/courses/1014512/assignments/3007914>`_
by 4:00pm on October 9, 2015.  Homework can be submitted up to 24 hours late
with a 10% reduction in points possible.  If special circumstances warrant
turning in assignments late, please make arrangements in advance.

See :ref:`hwformat` for a discussion of formatting.  Please use latex if
possible for the analytical questions and turn in m-files (or Python
scripts) for the coding parts, along with any results such as plots and
required discussion of these.  Using `matlab publish` or an IPython notebook
is a nice way to combine them.  Some samples of how you might do this will
appear soon at :ref:`hwformat`.

There are some e-books listed in the
:ref:`biblio_complex` section of the
bibliography that may be useful if you need a review.

* Download the Matlab codes from Spectral Methods in Matlab (SMM)
  and make sure these work for you.
  See :ref:`software` for links and options.

* Read Chapters 1-4 of SMM.

* Do the following exercises from SMM:

 * Exercise 1.1: Note that on page 2 of SMM the functions :math:`a_{-1}(x),
   a_0(x), a_1(x)` are special cases of the Lagrange basis functions.
   Use a similar approach for the pentadiagonal case where each of the
   functions :math:`a_{-2}(x)` through :math:`a_2(x)` will now be quartics.
   The formulas simplify a bit if you consider the case :math:`x_j=0`, which is
   sufficient since the resulting method is translation invariant.

 * Exercise 1.5.  For both parts (a) and (b), and for both the finite
   difference and spectral approximations, also plot the error `D*u -
   uprime` as a function of `x` for the case `N = 50`.

 * Exercise 2.1 (a,b,e,f) and familiarize yourself with the other properties.

 * Exercise 2.2 (a,b) and familiarize yourself with the other properties.

 * Exercise 2.4 - You need only derive (2.12).

 * Exercises 2.7 and 2.8.

 * Exercise 3.6.  Also use this idea to modify Program `p5.m` to 
   produce the same set of plots for both functions, but using only
   `fft` and one `ifft`.

