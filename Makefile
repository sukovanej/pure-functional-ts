.PHONY: clean

INPUT_FILE="Pure functional programming in Typescript.md"
OUTPUT_PDF=book.pdf

pdf:
	pandoc ${INPUT_FILE} \
		--table-of-contents \
		-H header.tex \
		-V geometry:"left=2cm, top=2cm, right=2cm, bottom=3cm" \
		-V fontsize=12pt \
		-s -o ${OUTPUT_PDF}

clean:
	rm ${OUTPUT_PDF}
