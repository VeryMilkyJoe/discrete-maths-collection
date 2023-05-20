# discrete-maths-collection

## Installation

For compilation, we use [`pandoc`](https://pandoc.org/MANUAL.html) together with various filters for mermaid and graphviz code blocks.

Requirements:

* `pandoc`
* `lua-graphviz-filter.lua` which is vendored with this project
* `mermaid-filter` which can be installed via `yarn`
  * The included `package.json` contains version constraints and can be used via `yarn install`
* `dot` on the `$PATH`

## Usage

To compile the markdown files to `.html` use:

```bash
$ pandoc --mathjax -F ./node_modules/.
bin/mermaid-filter --lua-filter lua-graphiv-filter.lua --from markdown+tex_math_dollars+tex_math_single_backslash+tex_math_double_backslash --standalone $input -o $output
```

or alternatively, use the `Makefile`:

```bash
$ make sheet_$num.html
```
