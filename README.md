# IJDSIR Typst templates

Typst templates that reproduce the IJDSIR manuscript and covering-letter PDFs 1:1 (US Letter).

```sh
cd typst
typst compile --root .. manuscript.typ
typst compile --root .. --font-path ../assets covering-letter.typ
```

- `typst/ijdsir.typ` — templates (`manuscript`, `covering-letter`)
- `typst/manuscript.typ`, `typst/covering-letter.typ` — samples
- `assets/` — header fonts/images extracted from the journal's covering-letter PDF
- `ijdsir-manuscript-template-doc-format.docx` — journal Word template (base for DOCX output)
