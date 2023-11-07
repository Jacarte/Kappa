echo "Compiling"

# export NOWIDOW=True
# export ADDCONTRIB=True
ARG=$1

case $ARG in

    draft)

        pdflatex -interaction=nonstopmode -shell-escape -draftmode  Kappa.tex 
        echo "Draft generated"
        ;;
    bib)
        :CASE_bib
        bibtex Kappa 
        echo "Bib generated"
        ;;
    final)
        pdflatex -interaction=nonstopmode -draftmode  -shell-escape Kappa.tex 
        bibtex Kappa 
        echo "" > errors.txt
        pdflatex -interaction=nonstopmode -shell-escape -synctex=1 Kappa.tex  > errors.txt
        echo "Final generated" 
        ;;
    *)
        echo "Invalid command"
        exit 1
        ;;
esac

