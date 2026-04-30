# Make ePub from markdown files

We can use `pandoc` to convert markdown files to e-book (ePub) format[^pandoc].
A YAML metadata block can be included to describe metadata used in output ePub file.

[^pandoc]: Pandoc. n.d. “Pandoc - Creating an Ebook with Pandoc.” Accessed April 30, 2026. ([link](https://pandoc.org/epub.html)).


## Sample YAML metadata block


```
---
title:
- type: main
  text: My Book
- type: subtitle
  text: An investigation of metadata
creator:
- role: author
  text: John Smith
- role: editor
  text: Sarah Jones
identifier:
- scheme: DOI
  text: doi:10.234234.234/33
publisher:  My Press
rights: © 2007 John Smith, CC BY-NC
ibooks:
  version: 1.3.4
---
```

## Command to convert markdown to ePub

```
pandoc -o output.epub content1.md [...]
```


## Sample Makefile

```
OUTPUT := output.epub
PANDOC_BIN := pandoc

all: $(OUTPUT)

$(OUTPUT):
	$(PANDOC_BIN) -o $(OUTPUT) \
		content.md \
		chapter01.md chapter02.md

clean:
	rm -f $(OUTPUT)
```


