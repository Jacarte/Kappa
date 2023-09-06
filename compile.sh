echo "Compiling"

# export NOWIDOW=True
pdflatex -draftmode -interaction=nonstopmode -shell-escape Kappa.tex || true
bibtex Kappa || true
pdflatex -interaction=nonstopmode -shell-escape Kappa.tex || true