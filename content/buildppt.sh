# Add commit hash to the manuscript
envsubst < $1 > manuscript.md

# Pandoc
pandoc manuscript.md --reference-doc template.pptx -o manuscript.pptx 

# Manuscript
open manuscript.pptx

