echo "Compiling"

# export NOWIDOW=True
# export ADDCONTRIB=True
ARG=$1

CALL :CASE_%ARG%

:CASE_draft
pdflatex -interaction=nonstopmode -shell-escape -synctex=1  Kappa.tex 
echo "Draft generated"
exit

:CASE_bib
bibtex Kappa 
echo "Bib generated"
exit

:CASE_final
pdflatex -interaction=nonstopmode -shell-escape -synctex=1 Kappa.tex 
echo "Final generated"
exit