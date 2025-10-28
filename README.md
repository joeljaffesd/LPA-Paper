# LAC LaTeX Template

This template repository is designed for writing papers for the **Linux Audio Conference (LAC)**. It includes the official LAC-25 conference style files and a ready-to-use paper structure.

## Getting Started

1. Fork or clone this repository
2. Open `main.tex` in VS Code
3. Customize the paper title, author information, and abstract
4. Start writing your paper content
5. Save the file to trigger automatic compilation (Ctrl/Cmd+S)
6. View the PDF preview using Ctrl/Cmd+Alt+V

## Repository Structure

```
LAC-LaTeX-Template/
├── main.tex              # Main LaTeX document for your paper
├── style/                # LAC conference template files
│   ├── LAC-25.sty        # LAC-25 conference style file
│   ├── LAC-25.bib        # Bibliography file (add your references)
│   └── IEEEbib.bst       # IEEE bibliography style
├── figures/              # Place your figures here
│   ├── ping.jpg          # Example single-format figure
│   ├── TwoColumnSine2/   # Example multi-format figure folder
│   │   ├── TwoColumnSine2.pdf # PDF version (for pdflatex)
│   │   └── TwoColumnSine2.eps # EPS version (for latex)
│   └── README.md         # Figure guidelines
├── .vscode/              # VS Code configuration
│   ├── settings.json     # LaTeX Workshop settings
│   └── extensions.json   # Recommended extensions
├── LICENSE               # License information
├── .gitignore            # Git ignore patterns
└── README.md             # This file
```

## LaTeX Workshop Features

This template is optimized for use with the **LaTeX Workshop** extension for VS Code.

### Key Features

1. **Live Preview**
   - Open PDF preview alongside your source code
   - Changes update automatically on save
   - Command: `Ctrl/Cmd+Alt+V` (View PDF)

2. **IntelliSense & Auto-completion**
   - Type `\` to see available LaTeX commands
   - Type `\begin{` to see environment suggestions
   - Reference auto-completion with `\ref{` and `\cite{`

3. **Build System**
   - Automatic build on save
   - Manual build: `Ctrl/Cmd+Alt+B`
   - Build recipe: latex → bibtex → latex → latex

4. **SyncTeX (Bidirectional Navigation)**
   - Forward: `Ctrl/Cmd+Alt+J` to jump from source to PDF
   - Backward: `Ctrl/Cmd+Click` in PDF to jump to source code

5. **Math Preview**
   - Hover over inline or display math to see rendered preview

6. **Error Detection**
   - Real-time error and warning display in the Problems panel

## Paper Formatting Guidelines

### Author Affiliations

Uncomment the appropriate section in `main.tex` based on the number of authors:

- **Single author**: Uncomment the `\affiliation` block
- **Two authors**: Uncomment the `\twoaffiliations` block
- **Three authors**: Uncomment the `\threeaffiliations` block
- **Four authors**: Uncomment the `\fouraffiliations` block (currently active)

### Figures

- Place all figures in the `figures/` directory
- Vectorial figures are preferred (PDF, EPS, etc.)
- For bitmap figures, ensure sufficient resolution for print quality
- Use `\includegraphics` to insert figures
- Example: `\includegraphics[width=0.5\textwidth]{figures/yourfigure.pdf}`

### Tables

- Center tables on the column or page
- Use italic captions that precede the table
- See examples in `main.tex`

### Equations

- Place equations on separate lines and number them
- Use `\label{}` for referencing
- See examples in `main.tex`

### References

- Add your BibTeX entries to `LAC-25.bib`
- Cite using `\cite{key}`
- References will be formatted in IEEE style
- Build sequence: latex → bibtex → latex → latex

### Code Listings

The template supports code snippets:
- Block code: Use `lstlisting` environment
- Inline code: Use `\lstinline{your code}`

## Automated Builds

This repository includes GitHub Actions for automated LaTeX compilation:

### Continuous Integration

- **Build on Push/PR**: Every push and pull request automatically builds the LaTeX document
- **Weekly Builds**: Scheduled builds ensure the template stays compilable
- **Artifact Storage**: Compiled PDFs are stored as downloadable artifacts

### Automatic Releases

- **Release on Main**: Pushes to the main branch automatically create a new release
- **PDF Attachment**: Each release includes the compiled PDF of the template
- **Version Tagging**: Releases are automatically tagged with incremental version numbers

You can download the latest compiled PDF from the [Releases](../../releases) page.

## Compilation

The paper must be compiled with the following sequence for proper references:

```bash
latex main.tex
bibtex main
latex main.tex
latex main.tex
```

Or if using pdflatex:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

LaTeX Workshop will handle this automatically.

## Requirements

Make sure you have a LaTeX distribution installed:

- **macOS**: TeX Live
  ```bash
  brew install texlive
  ```
- **Windows**: MiKTeX or TeX Live
- **Linux**: TeX Live
  ```bash
  sudo apt-get install texlive-full
  ```

## Paper Specifications

- **Page size**: Letter (do not change to A4)
- **Length**: 
  - Full papers: 4–8 pages
  - Poster papers: 2–4 pages
- **Format**: Two-column
- **Font**: Times Roman (default)
- **Page numbers**: Will be added during post-processing (leave as is)

## Tips

1. **Command Palette**: Press `Ctrl/Cmd+Shift+P` and type "LaTeX" to see all available commands
2. **Word Count**: Check the status bar at the bottom for word count
3. **Outline View**: See document structure in the sidebar
4. **Snippets**: Use LaTeX snippets for faster writing
   - `BEQ` + Tab → equation environment
   - `BIT` + Tab → itemize environment
   - `BEN` + Tab → enumerate environment
   - `FIG` + Tab → figure environment

## Template Conference Information

- **Conference**: 19th Linux Audio Conference (LAC-25)
- **Location**: Villeurbanne, France
- **Dates**: June 26–28, 2025
- **Website**: [linuxaudio.org](https://linuxaudio.org)

## License

This template is released into the public domain. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

This template is based on:
- LAC-25 official template
- Previously adapted from IFC-18 and DAFx templates
- Thanks to all the conference organizers and contributors over the years

## Additional Resources

- [LaTeX Workshop Documentation](https://github.com/James-Yu/LaTeX-Workshop)
- [LAC Conference Website](https://linuxaudio.org)
- [LaTeX Tutorial](https://www.overleaf.com/learn)
- [CTAN (LaTeX Package Repository)](https://ctan.org/)

---

**Happy writing and good luck with your LAC paper submission!**
