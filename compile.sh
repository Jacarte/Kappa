echo "Compiling"

# export NOWIDOW=True
# export ADDCONTRIB=True
pdflatex -draftmode -interaction=nonstopmode -shell-escape Kappa.tex || true
bibtex Kappa || true
bibtex sota_wasm || true
pdflatex -interaction=nonstopmode -shell-escape -synctex=1 Kappa.tex || true