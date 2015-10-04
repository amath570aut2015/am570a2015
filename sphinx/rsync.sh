# Used to sync up html files to webpage that appears at
#  http://faculty.washington.edu/rjl/classes/am570a2015/index.html 

echo "rsyncing to rjl@homer.u.washington.edu:public_html/classes/am570a2015"

chmod -R og+rX _build
rsync -avz  _build/html/ \
  rjl@homer.u.washington.edu:public_html/classes/am570a2015

