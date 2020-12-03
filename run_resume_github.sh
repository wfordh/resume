#!/bin/zsh

echo "Rendering resume in LaTeX"
xelatex fordhiggins_resume.tex
echo "Adding to GitHub"
git add fordhiggins_resume.tex
git add fordhiggins_resume.pdf
echo "Committing to GitHub"
now=`date`
git commit -m "$now"
echo "Pushing to GitHub"
git push origin main
