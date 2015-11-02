
.. _projects:

Course Projects
==============

Students should work in groups of 2 to tackle a project related to
approximation theory, interpolation, spectral methods, 
or something else closely related to the themes explored in this course.
See :ref:`projects_topics`.

I suggest working with someone who has a different background than your own
in order to maximize the amount you can learn from one another.
And try to pick a project on a topic you don't already know a lot about!

Each project will consist of a brief writeup of what you investigated
(perhaps 10 pages maximum, plus relevant computer code).

Each group will also give a short presentation (20 minutes) to the class so
that you can hear about what others did.

A project should involve reading and understanding at least one journal
article.  Some of the topics below are suggested by chapters of the ATAP
or SMM (Spectral Methods for Matlab)
books that we will not cover.  The idea would be to use the chapter as a
starting point for exploring something in more detail, finding other good
sources in the references or elsewhere.

.. _peer_review:

Feedback and peer review
-------------------------

Each group will be paired with another group for the purpose of giving
feedback on both a draft of the paper and slides for the presentation.

See :ref:`paper` for some hints on how to structure your paper and give
other groups feedback on theirs.

The goal is to help each other out, not to grade or pass judgement, so focus
on constructive feedback.  Another objective is to help you learn more about
at least one topic another group is working on, and perhaps to
improve your own paper or presentation by getting ideas from looking
at what other groups are doing.

Teams will use GitHub repositories to collaborate on projects, see
:ref:`git`, and you are encouraged to use the issue tracker to make and
respond to comments.


.. _timeline:

Timeline
--------

By Monday, November 9, groups should be formed with some idea of what you
want to work on.  

By Friday, November 13, each group should post a 1-page proposal of the
planned project, including references to paper(s) you plan to explore
and a summary of what computing you will do.  

I will give some feedback on each within a few days but you are also welcome
to look at other groups' proposals and make comments if you wish.

By Wednesday, November 25, post a draft of your paper so that your partner
group can "peer review" the draft.  

By Wednesday,  December 2, post comments on the draft.

By Tuesday, December 8, post your final paper submission.

Wednesday, December 9, 3:30 - 6:30pm presentations.

.. _paper:

The course project paper
-------------------------

The paper for your project should be 10 pages max, plus computer code, which
can be included in the GitHub repository.


In writing the paper and when giving feedback to your partner group on their
paper, it would be good to keep the following guidelines in mind:

* Write the paper so it is structured like a journal article, e.g. start
  with a brief abstract and include introduction and conclusions
  sections.

* The paper should be reasonably focused.  If you plan to investigate
  several aspects of a problem, 10 pages won't be enough to
  explore them all in detail.  It's ok to concentrate on one or two aspects
  in the paper and then include a list that briefly summarizes other things
  you explored.

* The paper should be understandable by others in the class even if they 
  haven't read all the papers you have on your topic.  You can assume the
  reader will have this class as background (so you don't need to 
  take up space repeating things covered in class) but if you discuss new
  concepts or terms not covered in class, make sure you define things 
  so the paper makes sense (to your partner group in particular) without
  having to track down the references.

* Take some care in selecting figures for the paper that best illustrate
  the topic and the results of any computer experiments you do. As in
  a journal article, you don't have space to include every figure you
  might produce, so make sure every figure you do include is there for a
  reason.

There are many resources available online to help in writing a paper and in
formulating feedback. 

.. _presentation:

Presentations
-------------------------

Presentations will be Wednesday, December 9, 3:30 - 6:30pm 

Presentations should be at most 20 minutes long.  

Try to structure the presentation so that it can be given jointly,
e.g. each person talking about some aspect of the project.

As with the paper, don't feel like you have to cover everything you did in
the presentation.  It might be best to cover the most interesting aspect or
two in enough detail that everyone can follow and learn something new and
interesting from the talk, and then summarize other things you looked at.


.. _projects_topics:

Possible topics
---------------

* Stability theory for barycentric interpolation, as briefly mentioned on
  page 39 of ATAP and reading Higham[2008] and Webb, Trefethen and Gonnet
  [2011] (references in ATAP).

* The Remez algorithm for finding the best (minimax) approximation.

* Chebfun2 for multi-dimensional polynomial interpolation.

* Interpolation in a region of the complex plane, e.g. choice of
  interpolation points as discussed at the end of Chapter 12 of ATAP.

* Roots of polynomials, starting with Chapter 18 of ATAP.

* Gauss quadrature and related methods, starting with Chapter 19 of ATAP.

* Carathédory-Fejér approximation (Chapter 20 of ATAP).

* Rational best approximation (Chapter 24 of ATAP).

* Padé approximation (Chapter 27 of ATAP).

* Analytic continuation and convergence acceleration (Chapter 28 of ATAP).

* WENO interpolation (Weighted Essentially Non-Oscillatory):  piecewise rational
  approximations that are used in methods for PDEs.

* Bézier curves and surfaces: splines often used in modeling geometry.

* Sinc function interpolation, perhaps starting with the Richardson and
  Trefethen (2011) reference from ATAP.

* Spectral methods for 4th order problems, starting from Chapter 14 of SMM.

* Spectral methods applied to some other interesting application.

* Eigenvalues and pseudospectra, starting from Chapter 9 of SMM.

* Explore further the relation between Chebyshev and trigonometric series,
  based on the paper `Extension of chebfun to periodic functions
  <http://math.boisestate.edu/~wright/research/trigpaper.pdf>`_, 
  by Wright, Javed, Montinelli, and Trefethen.

* Explore `spherefun`, an extension of `chebfun` to approximation on the
  sphere, based on the paper
  `Computing with functions in spherical and polar geometries I. The sphere.
  <http://math.boisestate.edu/~wright/research/spherefun.pdf>`_,
  by Townsend, Wilber, and Wright.

* Investigate radial basis functions, an approach do doing high-order
  interpolation with scattered data.  The paper
  `Solving PDEs with radial basis functions 
  <http://dx.doi.org/10.1017/S0962492914000130>`_ by Fornberg and Flyer might
  be a good starting point.  (They also have a 
  `new book <http://bookstore.siam.org/cb87/>`_ on this topic.)
  





