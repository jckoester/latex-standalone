\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{standaloneks}[2025/01/25 Private standalone class]

% Chemiepakete laden?
\newif\if@chem\@chemfalse
\DeclareOption{chem}{
  \@chemtrue
}

% TikZ laden?
\newif\if@tikz\@tikzfalse
\DeclareOption{tikz}{
  \@tikztrue
}
% Ende der Optionenverarbeitung:
\ProcessOptions\relax

% Basisklasse scrartcl laden mit Standardoptionen (werden ggf. überschrieben)
\LoadClass[class=scrartcl, crop=true, varwidth=true]{standalone}
% % Das alles könnte in ein Paket ksgeneral...
% packages required for the template
% \usepackage{codesection}
\usepackage{templatetools}

% Encoding and Language
\input{inc/general-encoding.tex}
% Fonts
\input{inc/general-fonts.tex}
% Colours
\input{inc/general-colors.tex}
% % Tables
% \input{inc/general-table.tex}
% % Graphics
% \input{inc/general-figures.tex}
% % Captions
% \input{inc/general-captions.tex}
% % Footnotes
% \input{inc/general-footnotes.tex}
% % Citation
% \input{inc/general-quote-cite.tex}
% General mathematic packages
\input{inc/general-maths.tex}

\if@tikz%
  \input{inc/tikz.tex}
\fi

% Rahmen
\input{inc/general-frames.tex}
% PDF Goodies
\input{inc/general-pdf.tex}
% Mathematik
\input{inc/maths.tex}
%Einheiten
\input{inc/units.tex}
% Symbole
\input{inc/general-symbols.tex}


\if@chem%
  \input{inc/chem.tex}
\fi
% eigene Commands:
\input{inc/commands.tex}

% Klassenspezifische Stile
\setlength\parindent{0pt} % Keine Einrückung
% % Spaltenabstand für multicols:
% \setlength{\columnsep}{2em}
% % Aufzählungen: %TODO: Definitiv für alle richtig!
% \usepackage{paralist}
% \setlength{\itemsep}{-2pt} % Abstand der items (funktioniert das überhaupt?)
% % multicols
% \usepackage{multicol}
