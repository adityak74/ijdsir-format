#import "ijdsir.typ": manuscript

// Sample = the journal's own template text, so the output can be compared 1:1
// with ijdsir-manuscript-template-pdf-format.pdf. Replace the content with your paper.
#show: manuscript.with(
  title: [Preparation of Papers for International Journal of Dental Science and Innovative Research (_IJDSIR_)],
  authors: (
    (name: "First Author", aff: 1),
    (name: "Second Author", aff: 1),
    (name: "Third Author", aff: 1),
  ),
  affiliations: ("Name of Department and Designation, Name of College and university, Name of City and Country",),
  email: "editor@ijdsir.com",
  corresponding: (
    name: "Name of Author",
    address: "Name of Department and Designation, Name of College and university, Name of City and Country.",
    phone: "**********",
    email: "editor@ijdsir.com",
  ),
  conflicts: "Nil",
  running-author: "First Author’s name",
  volume: "1", issue: "1", period: "January – February - 2018", pages: "01 -03", year: "2017",
  logo: image("../logo.png"),
  keywords: ("About four key words or phrases in alphabetical order", "separated by commas."),
  abstract: [Paper Setup must be in A4 size with Margin: Top 1.78 cm, Bottom 1.78 cm, Left 1.78 cm, Right 1.65 cm, Gutter 0 cm, and Gutter Position Top. Paper must be in two Columns after Authors Name with Width 8.59 cm, Spacing 0.51 cm. Whole paper must be with: Font Name Times New Roman, Font Size 10, Line Spacing 1.05 EXCEPT Abstract, Keywords (Index Term), Paper Tile, References, Author Profile (in the last page of the paper, maximum 400 words), All Headings, and Manuscript Details (First Page, Bottom, left side).Paper Title must be in Font Size 24, Bold, with Single Line Spacing. Authors Name must be in Font Size 11, Bold, Before Spacing 0, After Spacing 16, with Single Line Spacing. Please do not write Author e-mail or author address in the place of Authors name. Authors e-mail, and their Address details must be in the #h(33pt) Manuscript details. Abstract and Keywords (Index Term) must be in Font Size 9, Bold, Italic with Single Line Spacing. All MAIN HEADING must be in Upper Case, Centre, and Roman Numbering (I, II, III…#sym.wj;etc), Before Spacing 12, After Spacing 6, with single line spacing. All Sub Heading must be in Title Case, Left 0.25 cm, and Alphabet Numbering (A, B, C…#sym.wj;etc), Before Spacing 6, After Spacing 4, with Single Line Spacing. Manuscript Details must be in Font Size 8, in the Bottom, First Page, and Left Side with Single Line Spacing.#h(2.75pt) References must be in Font Size 8, Hanging 0.25 with single line spacing. Author Profile must be in Font Size 8, with single line spacing. Fore more details, please download TEMPLATE HELP FILE from the website.],
)

= Introduction
Highlight a section that you want to designate with a certain style, and then select the appropriate name on the style menu. The style will adjust your fonts and line spacing. Do not change the font sizes or line spacing to squeeze more text into a limited number of pages. Use italics for emphasis; do not underline. Procedure for Paper Submission

#heading(numbering: none, level: 2)[Review Stage]
Submit your manuscript electronically for review.

#heading(numbering: none, level: 2)[Final Stage]
When you submit your final version, after your paper has been accepted, prepare it in two-column format, including figures and tables.

#heading(numbering: none, level: 2)[Figures]
As said, to insert images in _Word,_ position the cursor at the insertion point and either use Insert | Picture | From File or copy the image to the Windows clipboard and then Edit | Paste Special | Picture (with “Float over text” unchecked).

The authors of the accepted manuscripts will be given a copyright form and the form should accompany your final submission.

= Math
If you are using _Word,_ use either the Microsoft Equation Editor or the _Math Type_ add-on (http://www.mathtype.com) for equations in your paper (Insert | Object | Create New | Microsoft Equation _or_ Math Type Equation). “Float over text” should _not_ be selected.

= Units
Use either SI (MKS) or CGS as primary units. (SI units are strongly encouraged.) English units may be used as secondary units (in parentheses). This applies to papers in data storage. For example, write “15 Gb/cm#super[2] (100 Gb/in#super[2]).” An exception is when English units are used as identifiers in trade, such as “3½ in disk drive.” Avoid combining SI and CGS units, such as current in amperes and magnetic field in oersteds. This often leads to confusion because equations do not balance dimensionally. If you must use mixed units, clearly state the units for each quantity in an equation.

The SI unit for magnetic field strength _H_ is A/m. However, if you wish to use units of T, either refer to magnetic flux density _B_ or magnetic field strength symbolized as µ#sub[0]_H_. Use the center dot to separate compound units, e.g., “A·m#super[2].”

= Helpful Hints
== Figures and Tables
Because the final formatting of your paper is limited in scale, you need to position figures and tables at the top and bottom of each column. Large figures and tables may span both columns. Place figure captions below the figures; place table titles above the tables. If your figure has two parts, include the labels “(a)” and “(b)” as part of the artwork. Please verify that the figures and tables you mention in the text actually exist. Do not put borders around the outside of your figures. Use the abbreviation “Fig.” even at the beginning of a sentence. Do not abbreviate “Table.” Tables are numbered with Roman numerals.

Include a note with your final paper indicating that you request color printing. Do not use color unless it is necessary for the proper interpretation of your figures. There is an additional charge for color printing.

Figure axis labels are often a source of confusion. Use words rather than symbols. As an example, write the quantity “Magnetization,” or “Magnetization M,” not just “M.” Put units in parentheses. Do not label axes only with units. As in Fig. 1, for example, write “Magnetization (A/m)” or “Magnetization (A⋅m−1),” not just “A/m.” Do not label axes with a ratio of quantities and units. For example, write “Temperature (K),” not “Temperature/K.”

Multipliers can be especially confusing. Write “Magnetization (kA/m)” or “Magnetization (103 A/m).” Do not write “Magnetization (A/m) × 1000” because the reader would not know whether the top axis label in Fig. 1 meant 16000 A/m or 0.016 A/m. Figure labels should be legible, approximately 8 to 12 point type.

= Conclusion
Conclusion section is not required. Although a conclusion may review the main points of the paper, do not replicate the abstract as the conclusion. A conclusion might elaborate on the importance of the work or suggest applications and extensions.

= Appendix
Appendixes, if needed, appear before the acknowledgment.

= Acknowledgment
The preferred spelling of the word “acknowledgment” in American English is without an “e” after the “g.” Use the singular heading even if you have many acknowledgments. Avoid expressions such as “One of us (S.B.A.) would like to thank ... .” Instead, write “F. A. Author thanks ... .” Sponsor and financial support acknowledgments are placed in the unnumbered footnote on the first page.

#heading(numbering: none)[8. References]
[1]. Aparna Singh, Nidhi Gupta, Nidhi Agarwal, Dipanshu Kumar, Ashish Anand. A Comparative Volumetric Evaluation of Four Obturating Techniques in Primary Teeth Using Cone Beam Computed Tomography. Pediatric dentistry.2017; 3 9(2).

[2]. Memarpour M, Shahidi S, Meshki R. Comparison of dif-ferent obturation techniques for primary molars by digital radiography. Pediatr Dent 2013;35(3):236-40.

[3]. Camp J. Pediatric endodontics: endodontic treatment for the primary and young permanent dentition. In: Cohen S, Burns RC, eds. Pathways of the Pulp. 8th ed. St. Louis, Mo., USA: Mosby Year Book, Inc.; 2002.

[4]. Mahajan N, Bansal A. Various obturation method used in deciduous teeth. Int Med Dent Sci 2015;4(1):708-13.

[5]. Guelmann M, McEachern M, Turner C. Pulpectomies in primary incisors using three delivery systems: an in vitro study. J Clin Pediatr Dent 2004;28(4):323-6.

[6]. Huybrechts B, Bud M, Bergmans L, Lambrechts P, Jacobs R. Void detection in root fillings using intraoral analogue, intraoral digital and cone beam CT images. Int Endod J 2009;42(8):675-85.

[7]. Cheung GS. Survival of first-time nonsurgical root canal treatment performed in dental teaching hospital. Oral Surg Oral Med Oral Pathol Oral Radiol Endod 2002;93 (5):596-604

[8]. Bawazir OA, Salama FS. Clinical evaluation of root canal obturation methods in primary teeth. Paediatr Dent 2006; 28(1):39-47.

[9]. San S, Okte Z. Success rate of Sealapex in root canal treatment for primary teeth: 3-year fallow-up. Oral Surg Oral Med Oral Pathol Oral Radiol Endod 2008;105:e93-e96.

[10]. Dultra F, Barroso JM, Carrasco LD, et al. Evaluation of apical microleakage of teeth sealed with four different root canalsealers. J Appl Oral Sei 2006; 14:341-54.
