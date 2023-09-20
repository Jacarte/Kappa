from PyPDF2 import PdfFileWriter, PdfFileReader
import os
import sys

inputpdf = PdfFileReader(open(sys.argv[1], "rb"))
OUT = sys.argv[2]

ranges = []
pages = []
num = "intro"
COUNTER = 1

NAMES = [
    "intro",
    "01introduction",
    "02background",
    "03automaticsoftware",
    "04exploitingsoftware",
    "05conclusions",
    "references"
]
for i in range(inputpdf.numPages):
    output = PdfFileWriter()
    print(i)
    content = inputpdf.getPage(i).extractText() + "\n"
    content = content.lower()
    content = content.replace(" ", "")
    
    if any(content.startswith(n) for n in NAMES):
        print("Split at", i)
        with open("%s/chapter%s.pdf" % (OUT, num), "wb") as outputStream:
            for p in pages:
                output.addPage(p)
                output.write(outputStream)
                pages = []
        num = COUNTER
        COUNTER += 1

    pages.append(inputpdf.getPage(i))

with open("%s/chapter%s.pdf" % (OUT, num), "wb") as outputStream:
    for p in pages:
        output.addPage(p)
        output.write(outputStream)
        pages = []

