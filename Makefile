.PHONY: clean

INPUT_FILE="Pure functional programming in Typescript.md"
OUTPUT_PDF=book.pdf
STYLE=kate

pdf:
	pandoc ${INPUT_FILE} \
		--highlight-style ${STYLE} \
		-s -o ${OUTPUT_PDF}

clean:
	rm ${OUTPUT_PDF}
