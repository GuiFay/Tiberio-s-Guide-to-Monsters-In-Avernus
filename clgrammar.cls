\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{clgrammar}[2020/04/25 Conlang Grammar Book]



\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass{book}
\RequirePackage{xcolor}
\definecolor{chapter}{rgb}{0.2, 0.25, 0.4}
\definecolor{section}{rgb}{0.2, 0.45, 0.3}
\definecolor{cover}{RGB}{145, 0, 140}
\definecolor{background}{rgb}{1.0, 0.99, 0.95}

% IPA support
\RequirePackage{fontspec}
\setmainfont{Noto Serif}
\setsansfont{Noto Sans}
\setmonofont{Noto Mono}

% Useful packages
\RequirePackage{verbatim}

% Fancy formatting
\RequirePackage{fancyhdr}
\RequirePackage{titling}
\RequirePackage{geometry}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\leftmark}
\fancyhead[RE,LO]{\rightmark}
\fancyfoot[LE,RO]{\thetitle}
\fancyfoot[RE,LO]{\theauthor}
\fancyhead[CE,CO]{\thepage}
\fancyfoot[CE,CO]{\thepage}
\AtBeginDocument{
    \setlength{\oddsidemargin}{2mm}
    \setlength{\evensidemargin}{2mm}
%    \setlength{\marginpar}{0pt}
%    \setlength{\marginparpush}{0pt}
    \setlength{\hoffset}{0pt}
    \setlength{\parskip}{4pt}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
}

% Better section titles
\RequirePackage{titlesec}
\usepackage{tocloft}
\titleformat{\chapter}[block]
  {\normalfont\bfseries}{}{0pt}{\Huge}
  
\titleformat{\section}[block]
    {\normalfont\bfseries\huge}
    {{\color{section}\large }}{6pt}{}
    
\renewcommand\cftchapfont{\LARGE\bfseries}
\renewcommand\cftsecfont{\LARGE}

\renewcommand\cftchappagefont{\LARGE\bfseries}
\renewcommand\cftsecpagefont{\LARGE}

\renewcommand\cftchapafterpnum{\par\addvspace{6pt}}
\renewcommand\cftsecafterpnum{\par\addvspace{6pt}}
    
\usepackage[pages=some]{background}
\usepackage{xcolor}
\usepackage[outline]{contour}
\contourlength{10mm}

\backgroundsetup{
scale=1,
color=black,
opacity=1,
angle=0,
contents={%
  \includegraphics[width=\paperwidth,height=\paperheight]{images/art.jpg}
  }%
}

% Better title page
\RequirePackage{anyfontsize}
\RequirePackage{graphicx}
\newcommand{\HUGE}{\fontsize{45}{60}}
\newcommand{\tine}{\fontsize{25}{30}}
\newcommand{\sub}{\fontsize{30}{25}}
\newcommand{\thesubtitle}{um guia de quem realmente foi a avernus e voltou....}
\renewcommand{\maketitle}{{\bfseries
    \thispagestyle{empty}
    \begin{center}
       \contour{black}{\textcolor{purple}{ {\HUGE\textsc{TIBERIO's GUIDE }}}}
       \contour{black}{\textcolor{purple}{ {\tine\textsc{ TO }} }}
       \contour{black}{\textcolor{purple}{ {\HUGE\textsc{MONSTERS }}}}\\
       \contour{black}{\textcolor{purple}{ {\sub\textsc{ IN AVERNUS }}}}\\
        
        \vspace{0.5cm}
        
        %\textcolor{purple}{{\Large\emph{\thesubtitle}} \\}
        %\textcolor{purple}{{\Large\emph{ou não}} \\}
        \vspace{1cm}
        \BgThispage
        \vfill
        %\textcolor{purple}{{\theauthor} \\}
    \end{center}
    \pagecolor{background}
    \setcounter{page}{0}
}}

\newenvironment{gloss}{
    \begin{center}
        \begin{tabular}{|c|}
        \hline
}{
        \hline
        \end{tabular}
    \end{center}
}