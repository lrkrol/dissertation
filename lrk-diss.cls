
% dissertation class; compile using XeLaTeX
% This work by Laurens R. Krol is licensed under CC BY 4.0

\ProvidesClass{lrk-diss}
\LoadClass[12pt,a4paper]{book}


% general packages
\usepackage{microtype}
\usepackage{tabularx}
\usepackage[nottoc]{tocbibind}
\usepackage[ngerman,english]{babel}
\usepackage{calc}


% setting font
\usepackage{fontspec}
\setmainfont[
        Path = font/crimsonpro/, 
        UprightFont = *-Regular,
        BoldFont = *-SemiBold, 
        ItalicFont = *-Italic,
        BoldItalicFont = *-SemiBoldItalic]
        {CrimsonPro}


% page style
\usepackage[
        left=1.25in,
        right=1.25in,
        top=1.2in,
        bottom=1.3in]
        {geometry}
\usepackage[hang,flushmargin,perpage,symbol]{footmisc}
\usepackage{emptypage}
\sloppy

\usepackage{fancyhdr}
\setlength{\headheight}{14.5pt}
\pagestyle{fancy}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
    \renewcommand{\sectionmark}[1]{\markright{#1}}
\pagestyle{plain}

\usepackage{tcolorbox}
\definecolor{footerbg}{rgb}{.95,.95,.95}
\definecolor{footerfg}{rgb}{.3,.3,.3}
\setlength\fboxsep{0.5\baselineskip}


% heading styles
\usepackage{xcolor}
\usepackage[noindentafter]{titlesec}
\usepackage{setspace}
\titleformat{\chapter}
        [hang]
        {\setstretch{0.85}\Huge\bfseries\raggedright}
        {\parbox{2cm}{\hfill\thechapter \hspace{10pt}{\mdseries\textcolor[rgb]{.75, .75, .75}|}\hspace{10pt}\null}}
        {0pt}
        {}
\titleformat{name=\chapter, numberless}
        [hang]
        {\setstretch{0.85}\Huge\bfseries\raggedright}
        {{\mdseries\textcolor[rgb]{.75, .75, .75}|}\hspace{10pt}\null}
        {0pt}
        {}
\titlespacing{\chapter}
        {0pt}
        {0pt}
        {\baselineskip}


% pdf options
\PassOptionsToPackage{bookmarksnumbered=true,hidelinks,linktoc=all}{hyperref}
\usepackage[a-1b]{pdfx}
\usepackage{bookmark}


% chapter information
\newcommand{\chaptermeta}{\leftskip 2cm \parindent 0pt \parskip 0.5\baselineskip}
\newcommand{\abstract}{\vfill\noindent\parbox[b]{2cm}{\textbf{Abstract}}}


% figures
\usepackage{graphicx}
\usepackage{subfig}
\usepackage[font=footnotesize,labelfont=it]{caption}
\setlength{\captionmargin}{1cm}


% adding more room for long figure labels in list of figures
\makeatletter
\def\l@figure{\@dottedtocline{1}{1.5em}{3em}}
\makeatother


% math stuff
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{siunitx}
\usepackage{textgreek}
\usepackage{bm}


% bibliography
\usepackage[nosectionbib,nodoi]{apacite}
\newcommand\citeApos[1]{\citeauthor{#1}'s \citeyear{#1}}
\bibliographystyle{apacite}


