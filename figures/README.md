# Figures Directory

Place all your figures here.

## Organization

- **Single format figures**: Place directly in this directory (e.g., `ping.jpg`)
- **Multi-format figures**: Create a subfolder with the figure name and place all formats inside
  - Example: `TwoColumnSine2/` contains both `TwoColumnSine2.pdf` and `TwoColumnSine2.eps`

## Supported Formats

- **For pdflatex**: PNG, JPG, PDF
- **For latex**: EPS

## Guidelines

- Use vectorial figures when possible (PDF, EPS) for best quality
- For bitmap images, ensure resolution is at least 300 DPI for print quality
- Name files descriptively (e.g., `system_architecture.pdf`, `frequency_response.png`)
- Keep file sizes reasonable

## Usage in LaTeX

For single format figures:
```latex
\begin{figure}[ht]
\centerline{\includegraphics[width=0.5\textwidth]{figures/ping}}
\caption{\label{fig:yourlabel}{\it Your caption here.}}
\end{figure}
```

For multi-format figures (LaTeX will automatically choose the appropriate format):
```latex
\begin{figure}[ht]
\centerline{\includegraphics[width=0.5\textwidth]{figures/TwoColumnSine2/TwoColumnSine2}}
\caption{\label{fig:yourlabel}{\it Your caption here.}}
\end{figure}
```

For figures spanning two columns:

```latex
\begin{figure*}[ht]
\center
\includegraphics[width=5in]{figures/TwoColumnSine2/TwoColumnSine2}
\caption{\label{fig:yourlabel}{\it Your two-column caption here.}}
\end{figure*}
```

## Example Structure

```
figures/
├── ping.jpg                    # Single format figure
├── TwoColumnSine2/            # Multi-format figure folder
│   ├── TwoColumnSine2.pdf     # PDF version (for pdflatex)
│   └── TwoColumnSine2.eps     # EPS version (for latex)
└── README.md                  # This file
```

The template includes placeholder figure names. Replace these with your actual figures or update the references in `main.tex`.