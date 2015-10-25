
.. _git:

Using Git and GitHub
====================


Git is a version control system that can be used in isolation on your own
laptop without any remote repository.  Even if you have no plans to share your
work it is always a good idea to use version control when developing computer
code (or writing papers, proposals, etc.).  I encourage you to learn git and
use it regularly for everything!

See :ref:`git_refs` at the bottom of this page for pointers to several
tutorials and other references.

.. _git_org:

GitHub
------

GitHub is a cloud hosting site that makes it easy to collaborate with other
people on the same project.  We will use git and GitHub and for the class
projects.  

On GitHub there is an "organization" 
accessible at `<https://github.com/amath570aut2015>`_ that contains:

- A repository `am570a2015 <https://github.com/amath570aut2015/am570a2015>`_
  containing resources developed for this class, including these webpages and 
  Jupyter notebooks.  

- A set of repositories that will be created for students to work in
  privately or for groups to share.


Note: this organization was set up for this class via `GitHub for Education
<https://education.github.com/>`_.  Visit this page to get the Student
Developer Pack that includes additional free private repositories
and other goodies.


.. _class_repos:

Class repository
----------------

The notebooks used in the class can be found in the class repository mentioned
above, along with the `Sphinx <http://sphinx-doc.org/>`_
files that create the webpages.  
You can clone this repository if you want to have a copy of all::

    git clone https://github.com/amath570aut2015/am570a2015.git

This will create a directory named `am570a2015` within the directory where you
give this `clone` command.

If you want to update your version after new materials have been added, you
can pull in changes via::

    cd /full/path/to/am570a2015
    git pull

If you want to run the notebooks, it is best to copy them out of this
repository to some other place first since running them will change the
`.ipynb` file and then `git pull` may tell you there is a conflict if it
tries to update this file.

.. _git_students:

Private student repositories 
----------------------------

First create up a GitHub account if you don't already have one.  If you
already have an account, you do **not** need to create a new one for this class.
See `<https://github.com>`_.

Next follow the link found on the
`Homework 3 Canvas page <https://canvas.uw.edu/courses/1014512/assignments/3027508>`_.
This will create a new private repository within the class organization with
the name `am570-username` where `username` is your GitHub username.

You are welcome to do your homework in this repository if you want to
experiment with using git and GitHub.

To get started, you should be able to clone your repository with a command like::

    git clone https://github.com/amath570a2015/am570-username.git

This will create a corresponding directory `am570-username` (as a
subdirectory of whatever directory you were in when you did the clone
command, though you could move it with the `mv` command if you need to).

You only need to do this once on a particular computer.  If you want to have
access to your files from more than one computer, or on both your laptop and
a SageMathCloud project, you could clone it on each.  (In this case see 
:ref:`git_multiple_clones` below for a suggested workflow so you do not end up
with conflicts that need to be merged.)

You should be able to do the following::

    cd /full/path/to/am570-username
    ls -a   # -a flag to show hidden files

Initially, this directory will contain only a "markdown" file `README.md`
and a subdirectory `.git` that is "hidden" since the name starts with a dot.
As in any git repository, this subdirectory contains all the history of your
repository so you don't want to mess with it.

You should also be able to do::

    git remote -v

and see something like::

    origin  git@github.com:amath570a2015/am570-username.git (fetch)
    origin  git@github.com:amath570a2015/am570-username.git (push)

This means that this local repository is linked to the remote repository on
github.  This particular remote repository has the shorthand name `origin`
since this is where you cloned it from.  You could set up additional
"remotes" that point elsewhere if you are collaborating on a project and
want to be able to fetch changes that someone else has made to the same set
of files.  (Or you can collaborate by both pushing and pulling from the same
`origin` on GitHub, if you both have permission to do so.)

As in the :ref:`class_repos` you can do::

    git pull

In this case it should say::

    Already up-to-date.

since no changes were made to the remote repository since you cloned it.

The `git pull` command is shorthand for the following::

    git fetch origin
    git merge origin/master

The first command fetches any new history from `origin` but doesn't change
the files you see, it only updates the information stored in the hidden
`.git`  directory about the state of `origin` and all the history stored in
that repository (on GitHub).

The second command merges any changes to the `master` branch of the `origin`
repository into the files you are currently seeing in your directory (your
"working directory"). 
By default you have only one branch in your local repository, which is named
`master`.

More about branches and merging later. 


You can add any files you want to your directory and if you use 
commands like `git add` and `git commit` you can track them with version
control.  

When you want to copy the history of all your local Git changes up to the
repository stored on GitHub, you can do::

    git push origin

or simply `git push` since `origin` is the default place to push to unless
you specify a different `remote`.


You can `add` a file as often as you like, and each time you `commit` you are
keeping a new snapshot of that file.

Whenever you want to push your changes to GitHub, you can do::

    git push origin

You can do this as often as you like.  It's a good way to back up your work.

If you are working with Jupyter notebooks, see
:ref:`git_notebooks` below for some hints on working with Git and notebooks.

.. _git_multiple_clones:

Working with more than one clone
--------------------------------

If you clone the repository onto a different computer or SMC project,
you will get all the history that has been pushed to GitHub, not just the
current state of the files.   (Git uses a *distributed* version control
model, rather than a *client-server* model that older version control
systems like `svn` used.)   

If you make changes to a file in two different clones of the repository,
e.g. one on your laptop and one on SMC, then you might run into issues with
having to merge them. 

Although merging is often done and not so hard, 
the easiest way to avoid problems when you are the only person working with
the repository is to use the following workflow:

- Whenever you start working in a repository on any computer, do::

    git pull

  to make sure your local version is up to date with GitHub.

- When you are done working in it, particularly if you think you might be
  working elsewhere next time, make sure you have committed all changes, and
  added and committed any new files you want to track, and then do::

    git push

  to make sure the GitHub version is up to date with your local machine.

If you follow this then you should be fine.  

Remember that the `git status` command is useful for making sure you don't
have uncommitted changes.  There are many options, try::

    git help status

or see `<http://git-scm.com/docs/git-status>`_, for example.

.. _git_notebooks:

Git with Jupyter notebooks
--------------------------

Git is a great tool for versioning Jupyter notebooks, but there are a couple
things to be a aware of.

A notebook is simply a file with a name like `filename.ipynb`.  You can open
it with an editor to see what it contains.  It typically contains both the
input cells and also any output that was present on the page the most recent
time you saved it.  It's stored in the  `JSON <http://www.json.org/>`_
(JavaScript Object Notation) format.

The problem is that:

- You probably only want to commit the input to version control, not the
  output.  Particularly if the output consists of plots, which are put right
  into the JSON file as very long strings.

- If you click on "All Output" and then select "Clear" in the "Cell"
  menu at the top of the notebook, and then save it, this will get rid of
  all the output for you.  But it still contains the input numbers from
  the input cells (such as `In [1]`, which changes every time you execute a
  cell), and it also contains a line at the top of the form::
    "signature": "sha256:XXX"
  where `XXX` is a is a hash code that changes everytime you work with the
  notebook.  This makes it awkward to tell whether you've really changed 
  the notebook input or perhaps just ran things again.  Git will see it as 
  having been modified.

To avoid these issues, there's a nice utility `nbstripout` that can be used
to strip the output from a notebook, and which also replaces input line
numbers with `Null` and removes the `signature` line.  

You can get this utility from GitHub, see 
`<https://gist.github.com/minrk/6176788>`_.


Another advantage of using this is that if you have the notebook open and
are working on it, you do not need to clear the output in the live notebook
at all.  You can apply `nbstripout` in a terminal window without affecting
the notebook running in the web browser.  

So, for example, if you've made a change and you want to commit the current
version of the input, you can do::

    python /full/path/to/nbstripout filename.ipynb
    git diff filename.ipynb  # if you want to see changes from last commit
    git add filename.ipynb
    git commit -m "comment on the change"

and keep working further with the notebook in the browser, with all the
output still intact.

.. _git_refs:

Other git references
--------------------

There are many tutorials and other sources of information available for Git.
In particular, see:

- `Software Carpentry lessons <http://swcarpentry.github.io//git-novice/index.html>`_
- `<https://www.atlassian.com/git/tutorials/>`_
- `<https://try.github.io/>`_ walks you through some basics.
- `Set Up Git <https://help.github.com/articles/set-up-git/>`_ from GitHub
  includes information on how to install git.
- `Git cheat sheet
  <https://education.github.com/git-cheat-sheet-education.pdf>`_
- `Some other resources <https://help.github.com/articles/good-resources-for-learning-git-and-github/>`_
- `Pro Git book <http://git-scm.com/doc>`_
- Try googling "git tutorial" or a particular command such as "git pull".
- Once you have git installed, type e.g. `git help pull` in a shell.
- See also `GitHub Desktop <https://desktop.github.com/>`_ if you're looking
  for an app to make it easier to interact with GitHub.

