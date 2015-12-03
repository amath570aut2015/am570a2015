

.. _homework5:

=============================================================
Homework 5
=============================================================


Submit via the `Canvas page <https://canvas.uw.edu/courses/1014512/assignments/3055209>`_
by 11:00pm on Friday December 7, 2015.
Homework can be submitted up to 24 hours late
with a 10% reduction in points possible.  If special circumstances warrant
turning in assignments late, please make arrangements in advance.


**Problem 1**

The bottom figure on page 172 of ATAP shows the approximate solution to the
Airy equation (21.4) computed using a Chebyshev spectral method.
The resulting Chebfun has length :math:`n=170`.

Write a program that computes the approximate solution for values of
`n = 10:10:200` and produces a semilog plot of the error vs.
:math:`n`. 

Note the following:

* Set up and solve an :math:`n\times n`  linear system for each value of
  :math:`n`.
  You can get the matrix by evaluating `matrix(L,n-2)` where `L` is the chebop 
  defined on page 172, and then you will have to define the right hand
  side of the system appropriately to impose the desired boundary
  conditions.  Examine such a matrix for small `n` to figure out how the
  boundary condition should be set.

* For the `exact solution` 
  the matlab function `airy` can be used, but you will have to rescale the
  value returned by this function so that :math:`\hat p(x)` at the left end 
  point has the
  value 1, since this is the boundary condition imposed on the numerical
  solution.

* To measure the error, take the vector :math:`u_n` obtained with :math:`n` points
  and use Chebfun to generate the interpolating polynomial :math:`p_n(x)` over
  the interval.  Also define :math:`\hat p(x)` to be the Chebfun approximation of
  the true solution (allowing it to use as many points as needed to get
  machine precision).  Then define the error as 
  :math:`E_n = \|p_n-\hat p\|_\infty` 
  (which can be computed with `norm(pn-phat,inf)` if these are defined
  properly as Chebfuns).

Also plot the computed and true solutions together on the same plot for selected
values of :math:`n = 100, 110, 120`.


**Problem 2**

To see how convergence of the spectral method compares to 
convergence of the interpolation problem of approximating the Airy function,
write a program
that uses Chebfun to compute the polynomial :math:`p_n(x)` 
that interpolates the Airy function at :math:`n`
Chebyshev points and plot the error 
:math:`E_n = \|p_n-\hat p\|_\infty` 
vs. :math:`n` on the same semilog plot
as the results from Problem 1.  
Again do this on the interval :math:`[-30,30]` and scale
the function you are interpolating to have :math:`\hat p(-30) = 1` so that
:math:`\hat p` is the same as before.


**Problem 3**

The notebook "Spectral_Advection.ipynb" found in :ref:`codes` and the
`codes` directory of the class GitHub repository
illustrates using the Chebyshev spectral method to solve the advection
equation :math:`u_t = u_x` using the Forward Euler method for
time stepping.

See also the notebook "Dx_Pseudospectra.ipynb" for more discussion of
spectra and pseudospectra of this operator both with and without boundary
conditions.

Write a code for this same problem but using 4th
order Runge-Kutta method for time stepping and investigate what time
step restriction must be imposed to obtain a stable approximation, by
plotting the eigenvalues of the spectral differentiation matrix being used
and taking into account the stability region of the method (which can be
plotted by adapting the code in Program 25 of SMM).  Check also that the
pseudospectral lie within :math:`{\cal O}(\epsilon)` of the stability region 
as :math:`\epsilon \rightarrow 0`.

Confirm this analysis of the allowable time step by running
your code for various values of :math:`\Delta t` to see when it is stable.

The Runge-Kutta method for :math:`u'(t) = f(u)` is:

:math:`k_1 = f(U^n)`

:math:`k_2 = f(U^n + 0.5 \Delta t k_1)`

:math:`k_3 = f(U^n + 0.5 \Delta t k_2)`

:math:`k_4 = f(U^n + \Delta t k_3)`

:math:`U^{n+1} = U^n + \frac{\Delta t}{6} (k_1 + 2k_2 + 2k_3 + k_4)`


For the problem :math:`u_t = u_x` with boundary condition :math:`u(1,t) =
\sin(5(1+t))` with exact solution :math:`u(x,t) = \sin(5(x+t))`,
explore how the error at time :math:`t=1.0`
behaves both as the number of grid points :math:`N` is
varied and as the time step :math:`\Delta t` is varied.


