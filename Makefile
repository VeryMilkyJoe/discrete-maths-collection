PANDOC=pandoc
COMMON_ARGS=--mathjax --from markdown+tex_math_dollars+tex_math_single_backslash+tex_math_double_backslash --standalone
PDF_EXTRAS=-H tex/deeplists.tex
MERMAID_FILTER=./node_modules/.bin/mermaid-filter
PANDOC_FILTERS=-F $(MERMAID_FILTER) --lua-filter tex/lua-graphiv-filter.lua
SRC=src
OUTPUT=output

%.html: $(SRC)/%.md
	@mkdir -p $(OUTPUT)
	$(PANDOC) $(COMMON_ARGS) $(PANDOC_FILTERS) $< -o $(OUTPUT)/$@


%.pdf: $(SRC)/%.md
	@mkdir -p $(OUTPUT)
	$(PANDOC) $(PDF_EXTRAS) $(COMMON_ARGS) $(PANDOC_FILTERS) $< -o $(OUTPUT)/$@

clean:
	rm $(OUTPUT)/*
	rm -r $(OUTPUT)
