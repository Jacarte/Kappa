from statistics import mean, median
import numpy as np
import sys
import os
import shutil
from pikepdf import Pdf


OUT = os.path.dirname(__file__)


def process_pdf(pdffile):
   
    pdf = Pdf.open(pdffile)

    new_pdf_files = [ Pdf.new() for i in range(112) ]
    # the current pdf file index
    new_pdf_index = 0

    for n, page in enumerate(pdf.pages):
        new_pdf_files[new_pdf_index].pages.append(page)
        # make a unique filename based on original file name plus the index
        name, ext = os.path.splitext(pdffile)
        output_filename = f"page{n+1}.pdf"
        # save the PDF file
        new_pdf_files[new_pdf_index].save(output_filename)
        new_pdf_index += 1


if __name__ == '__main__':
    process_pdf(sys.argv[1])