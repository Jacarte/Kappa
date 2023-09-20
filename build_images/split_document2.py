from PyPDF2 import PdfWriter, PdfReader
import os
import sys

inputpdf = PdfReader(open(sys.argv[1], "rb"))
OUT = sys.argv[2]

ranges = []
pages = []
num = "intro"
COUNTER = 1

NAMES = [
    "intro",
    "01introduction",
    "02background",
    "03automaticsoftwarediversification",
    "04exploitingsoftware",
    "05conclusions",
    "references"
]

for i in range(len(inputpdf.pages)):
    output = PdfWriter()
    print("===========")
    content = inputpdf.pages[i].extract_text() + "\n"
    content = content.lower()
    content = content.replace("\n", " ")
    content = content.replace(" ", "")

    print(content[:50])
    
    if any(content.startswith(n) for n in NAMES):
        print("Split at", i)
        with open("%s/chapter%s.pdf" % (OUT, num), "wb") as outputStream:
            for p in pages:
                output.add_page(p)
                output.write(outputStream)
                pages = []
        num = COUNTER
        COUNTER += 1

    pages.append(inputpdf.pages[i])

with open("%s/chapter%s.pdf" % (OUT, num), "wb") as outputStream:
    for p in pages:
        output.add_page(p)
        output.write(outputStream)
        pages = []

