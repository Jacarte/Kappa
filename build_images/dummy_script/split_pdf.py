from statistics import mean, median
import numpy as np
import sys
import os
import shutil
from pikepdf import Pdf


OUT = os.path.dirname(__file__)


def process_pdf(pdffile):
    file2pages = {
        "kappa": [0, 37], # 1st splitted PDF file will contain the pages from 0 to 9 (9 is not included)
        "fix1": [37,38],
        "kappa2": [37, 66],
        "fix2": [66,67],
        "kappa3": [67,68],
        "paper1": [68, 75], # 2nd splitted PDF file will contain the pages from 9 (9 is included) to 11
        "paper2": [75, 88], # 3rd splitted PDF file will contain the pages from 11 until the end or until the 100th page (if exists)
        "paper3": [88, 101], # 3rd splitted PDF file will contain the pages from 11 until the end or until the 100th page (if exists)
        "paper4": [101, 112], # 3rd splitted PDF file will contain the pages from 11 until the end or until the 100th page (if exists)
    }
    pdf = Pdf.open(pdffile)

    new_pdf_files = [ Pdf.new() for i in file2pages ]
    # the current pdf file index
    new_pdf_index = 0

    for n, page in enumerate(pdf.pages):
        new_pdf_name = list(file2pages.keys())[new_pdf_index]
        if n in list(range(*file2pages[new_pdf_name])):
            # add the `n` page to the `new_pdf_index` file
            new_pdf_files[new_pdf_index].pages.append(page)
            print(f"[*] Assigning Page {n} to the file {new_pdf_name}")
        else:
            # make a unique filename based on original file name plus the index
            name, ext = os.path.splitext(pdffile)
            rng = file2pages[new_pdf_name]
            output_filename = f"{new_pdf_name}(pages {rng[0]}-{rng[1]}).pdf"
            # save the PDF file
            new_pdf_files[new_pdf_index].save(output_filename)
            print(f"[+] File: {output_filename} saved.")
            # go to the next file
            new_pdf_index += 1
            # add the `n` page to the `new_pdf_index` file
            new_pdf_files[new_pdf_index].pages.append(page)
            print(f"[*] Assigning Page {n} to the file {new_pdf_name}")

    # save the last PDF file
    name, ext = os.path.splitext(pdffile)
    rng = file2pages[new_pdf_name]
    output_filename = f"{new_pdf_name}(pages {rng[0]}-{rng[1]}).pdf"
    new_pdf_files[new_pdf_index].save(output_filename)
    print(f"[+] File: {output_filename} saved.")


if __name__ == '__main__':
    process_pdf(sys.argv[1])