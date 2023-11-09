echo arch:$1
pandoc -t beamer -s $1 -o tmp/pdfoutpt.pdf
pandoc -t revealjs -s $1 -o tmp/rjs-outpt.html --include-in-header=slides.css
pandoc -t dzslides -s $1 -o tmp/dz-outpt.html
pandoc $1 --reference-doc template.pptx -o tmp/pptxoutpt.pptx 
