

.. _homework3:

=============================================================
Homework 3
=============================================================

Submit via the `Canvas page
<https://canvas.uw.edu/courses/1014512/assignments/3027508>`_
by 11:00pm on November 5, 2015.  Homework can be submitted up to 24 hours late
with a 10% reduction in points possible.  If special circumstances warrant
turning in assignments late, please make arrangements in advance.


* Create a GitHub account for yourself if you don't already have one, see
  `<https://github.com>`_.

* Watch the 
  `Intro to Git video
  <https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0b0d36d9-d8f3-0edd-517c-1374b697b132>`_
  from :ref:`26oct2015` if you are not already familiar with git.

* See the 
  `Canvas Homework 3 assignment <https://canvas.uw.edu/courses/1014512/assignments/3027508>`_
  page for a link that will create a private repository for you named
  `am570-username` based on your GitHub username.  See :ref:`git` for
  information on how to clone this repository.

* Watch the `Intro to GitHub video
  <https://uw.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=90d5c9a3-b746-5307-8759-3b17ae432392>`_
  from :ref:`26oct2015`, even if you are familiar with GitHub, since it
  contains information about the class repositories and walks you through
  the next steps:


  - Clone the repository `am570-username`
  - cd into the directory this creates.
  - Edit `README.md` so the title is correct for your username and so
    that it your full name appears in the file.
  - Use `git add` and `git commit` to commit this change.
  - Use `git push` to push this change to GitHub.
  - Check the GitHub webpage to see that it appears as desired.
  - Create a subdirectory `hw3` 
  - Copy the files `cheb.m` and `p11.m` from SMM into `hw3`
  - `git add` and `git commit` these files (original version)
  - Run `p11.m` in Matlab and `print -djpeg p11.jpg` to create a jpeg file.
  - Add and commit this file and `git push` to GitHub.
  - Note that you can view the image on GitHub.
  - Modify `p11.m` so that the upper figure is for `N=30` rather than
    `N=10`.
  - Create a new version of `p11.jpg`.  
  - Add and commit these changes and `git push` to GitHub.
  - Note that on GitHub you can view the changes introduced in a commit by
    clicking on the commit number.


For the remaining problems you are encouraged to work in your git repository
and commit often as you go along to get in the habit of using version control.

You may submit the homework as usual through the `Canvas submission link
<https://canvas.uw.edu/courses/1014512/assignments/3027508>`_.  

If you want to use your GitHub repository instead, please submit a
file to Canvas by the due date that contains your GitHub username
and the commit number for the version you want me to grade (the
40-digit hexadecimal string).  This can just be a text file or a pdf file.

* ATAP #5.1, 5.2.

* ATAP #5.7.  In addition to what is asked for, also:

  - Produce a log-log plot of the max-norm error in :math:`p_n(x)` vs.
    :math:`n` for :math:`n=1,~2,~\ldots,~25` and on the same plot, the error
    in the polynomial interpolating at the Chebyshev points.
  - Do this for :math:`f(x) = |x|`, and then also try your code
    on :math:`f(x) = \exp(-|x|^3)` and :math:`f(x) = e^x`.  
    Comment on what you observe in each case.

* ATAP #6.5.  Note that the binomial coefficient formula for ":math:`k` choose
  :math:`n`" given by
  :math:`k(k-1)...(k-n+1)/n!`  can be used also when :math:`k=1/2`.
  Be careful about showing convergence of your series
  approximation.  You can use the ratio test, but may need to rescale
  :math:`x` to get a series that coverges everywhere in :math:`[-1,1]`, using
  e.g. :math:`|x| = 2|x/2|`.

* ATAP #7.1, 8.1, 8.2, 8.3.


