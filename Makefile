OUTPUT := it-manual.epub
PANDOC_BIN := pandoc

all: $(OUTPUT)

$(OUTPUT):
	$(PANDOC_BIN) -o $(OUTPUT) \
		content.md \
		01-make-epub-from-md.md


clean:
	rm -f $(OUTPUT)
