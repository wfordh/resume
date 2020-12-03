#!/bin/zsh

# Compiles the LaTeX and adds/pushes it to GitHub
# You may pass a string as an argument for flavor text on the commit message

echo "Rendering resume in LaTeX"
xelatex fordhiggins_resume.tex
echo "Adding to GitHub"
git add fordhiggins_resume.tex
git add fordhiggins_resume.pdf
echo "Committing to GitHub"
now=`date`
git commit -m "$1 $now"
echo "Pushing to GitHub"
git push origin main
