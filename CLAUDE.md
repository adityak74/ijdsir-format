# IJDSIR paper formatter — instructions for Claude

The person using this repo is **not a programmer**. They will give you a paper as a `.docx`
and ask for it in IJDSIR journal format. Do all the technical work yourself, explain things in plain
language, don't ask them to run commands, and open the finished files for them at the end.

## The one rule: never change the content

The author's paper goes in **word for word**. Your only job is formatting.

- Do not rewrite, shorten, summarise, rephrase or "improve" anything. That includes grammar,
  spelling, punctuation, capitalisation, numbers, units, citations and reference text.
- Do not add content (no invented keywords, affiliations, emails, phone numbers, references or headings).
- Do not drop content: every paragraph, table, figure, caption and reference must appear.
- The sample text in the templates is **placeholder only**. Replace every piece of it with the
  paper's content. No sample text may remain in the output.
- If the paper is missing something the journal format needs (e.g. corresponding author phone,
  keywords, conflicts of interest), **ask the user** for it. Never make it up. If they don't have it,
  leave the journal's placeholder (e.g. `**********`) and tell them.
- Keep the author's emphasis (bold/italic), superscripts/subscripts, special symbols and
  equations as they are.

## What to produce

For a paper `X.docx`, create a folder `papers/<short-name>/` containing:

1. `paper.docx`: the paper in the journal's Word template (this is the main deliverable).
2. `paper.typ` and `paper.pdf`: the same paper rendered with the Typst template, a
   pixel-accurate PDF preview.
3. If asked, `covering-letter.typ` and `covering-letter.pdf`.

Never edit the files in `typst/` or the journal originals in the repo root. Copy from them.

## How to do it

1. **Read the paper.** `pandoc X.docx -t markdown -o papers/<name>/source.md --extract-media=papers/<name>/media`.
   Read all of `source.md` and identify: title, authors (with affiliation numbers), affiliations,
   email, corresponding author (name, address, phone, email), conflicts of interest, abstract,
   keywords, the body sections/subsections, tables, figures with captions, and references.
2. **PDF (Typst).** Copy `typst/manuscript.typ` to `papers/<name>/paper.typ`. Change the import to
   `#import "../../typst/ijdsir.typ": manuscript` and the logo to `image("../../logo.png")`. Replace every field and all sample body text with
   the paper's content:
   - Level-1 headings: `= Heading` (auto-numbered "1.", "2." …). Subsections: `== Heading`.
     If the paper numbers its headings itself, use `#heading(numbering: none)[…]` with its own
     numbers so they are not changed.
   - References: copy them exactly as the paper writes them, one paragraph each (as in the sample).
   - Figures: `#figure(image("media/…"), caption: […])`. Tables: `#figure(table(...), caption: […])`.
   - **Escape Typst special characters** in pasted text so they print literally:
     `\#  \$  \*  \_  \@  \<  \>  \[  \]  \\` and backtick. Unescaped, they change or remove text.
   - Compile: `cd papers/<name> && typst compile --root ../.. paper.typ`
3. **DOCX.** Start from a copy of `ijdsir-manuscript-template-doc-format.docx`, which already has the journal
   header, footer, logo and two-column layout. Use python-docx in a venv
   (`python3 -m venv .venv && .venv/bin/pip install python-docx`; `.venv/` is git-ignored).
   Replace the template's sample paragraphs, title block, abstract, keywords, sections and
   references with the paper's, keeping the template's paragraph styles and section breaks.
   Fill the header/footer placeholders (volume, issue, pages, author name) only with real values
   from the user. Otherwise leave them.
4. **Verify. This is required before you report done.**
   - Content check: extract the plain text of the input (`pandoc X.docx -t plain`) and of each
     output (`pandoc paper.docx -t plain`, `pdftotext paper.pdf`). Compare word sequences, ignoring
     whitespace, line breaks, hyphenation and the journal's fixed header/footer text. Every word
     of the paper must be present, in order. Fix any missing or changed text.
   - Make sure no template sample text remains (e.g. "Preparation of Papers", "First Author",
     "Highlight a section", "Math", "Units", "Helpful Hints").
   - Look at the PDF pages (render to PNG) for overflow, overlapping text or missing figures.
5. **Hand over.** `open` the PDF and DOCX, and tell the user in plain words where they are, what was
   filled in, and anything you could not fill (which they need to provide).

## Covering letter

`typst/covering-letter.typ` shows the fields. Copy it to `papers/<name>/`, fix its `../assets/` image paths to `../../assets/`, and fill only with details
from the paper or from the user. Fields left out print the journal's dotted blanks. Compile with
`typst compile --root ../.. --font-path ../../assets covering-letter.typ` (the font path is required for the header fonts).

## Repo layout

- `typst/ijdsir.typ`: the templates. Matched 1:1 to the journal PDFs; don't change the layout.
- `typst/manuscript.typ`, `typst/covering-letter.typ`: samples showing every field.
- `assets/`: fonts and images for the covering-letter header.
- `ijdsir-manuscript-template-doc-format.docx`: the journal's Word template (base for DOCX output).
- `author-instructions-for-manuscript.pdf`: the journal's rules, for reference.
