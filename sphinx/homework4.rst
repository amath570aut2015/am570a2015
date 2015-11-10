

.. _homework4:

=============================================================
Homework 4
=============================================================

Submit via the `Canvas page
<https://canvas.uw.edu/courses/1014512/assignments/3040597>`_
by 11:00pm on November 19, 2015.  Homework can be submitted up to 24 hours late
with a 10% reduction in points possible.  If special circumstances warrant
turning in assignments late, please make arrangements in advance.


* ATAP Exercise 10.6.

* ATAP 11.1 and also add an additional part (d): Compute the integral (11.9)
  for the two choices of contours :math:`|x|=3` and :math:`|x|=3/2` and
  compare to the actual error :math:`f(2)-p(2)`.  Confirm that in one
  case it gives the right result and in the other it does not (and make sure
  you understand why).

  See `<http://www.chebfun.org/docs/guide/guide05.html>`_
  for a discussion of how to compute Cauchy integrals.  The function
  :math:`f(x)` defined in the problem is an analytic function that takes the
  values we want to interpolate at the interpolation points.  Any other
  analytic function taking the same values at these 3 points should result in
  the same interpolating polynomial. (But a different error at :math:`x=2`, 
  of course.)

* ATAP 14.2.

* ATAP 15.4.  Also plot the Lebesgue function for :math:`n=10`.

* Exercise 15.A: (additional exercise)

  Confirm using Chebfun that the bound (15.5) holds
  for the following cases, with :math:`n=20`:

    * :math:`f(x) = 1/(1+25x^2)` with both equally spaced and Chebyshev
    * points
    * :math:`f(x) = 1/(1+500x^2)` with both equally spaced and Chebyshev
    * points
  
  The functions `remez` and `lebesgue` may be useful.

