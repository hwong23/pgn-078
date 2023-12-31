echo arch:$1
pandoc -t beamer -s $1 -o pdfoutpt.pdf
pandoc -t revealjs -s $1 -o rjs-outpt.html --include-in-header=slides.css
pandoc -t dzslides -s $1 -o dz-outpt.html
pandoc $1 --reference-doc template.pptx -o pptxoutpt.pptx 
