%%
%% This is file `uiucthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uiucthesis.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% Any modified versions of this file must be renamed
%% with new filenames distinct from uiucthesis.cls.
%%
%% For distribution of the original source see the terms
%% for copying and modification in the file uiucthesis.dtx.
%%
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\def\fileversion{v2.25} \def\filedate{2005/03/25}
%% Package and Class "uiucthesis" for use with LaTeX2e.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ethesis}
				 [\filedate\ \fileversion\ UIUC Thesis (PJC)]
\RequirePackage{setspace}
\expandafter\ifx\csname @ifundefined\endcsname\relax
	\def\@ifundefined#1{%
		\expandafter\ifx\csname#1\endcsname\relax
			\expandafter\@firstoftwo
		\else
			\expandafter\@secondoftwo
		\fi}
\fi
\@ifundefined{MakeUppercase}{\let\MakeUppercase=\uppercase}{}
\newif\if@thesisdraft \@thesisdraftfalse
\newif\if@thesisfancy \@thesisfancyfalse
\newif\if@thesisestyle \@thesisestylefalse
\newif\if@fullpage \@fullpagefalse
\newif\if@largecaps \@largecapsfalse
\newif\if@proquest \@proquestfalse
\newif\if@edeposit \@edepositfalse
\newif\if@thesisoffcenter \@thesisoffcenterfalse
\newif\if@centerchapter \@centerchapterfalse
\DeclareOption{draftthesis}{\@thesisdrafttrue}
\DeclareOption{fancy}{\@thesisfancytrue}
\DeclareOption{estyle}{\@thesisestyletrue}
\DeclareOption{fullpage}{\@fullpagetrue}
\DeclareOption{proquest}{\@proquesttrue}
\DeclareOption{toclabels}{\AtBeginDocument{\toclabels}}
\DeclareOption{edeposit}{\@edeposittrue}
\DeclareOption{offcenter}{\@thesisoffcentertrue}
\DeclareOption{centerchapter}{\@centerchaptertrue}
\DeclareOption{largecaps}{\@largecapstrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\PassOptionsToClass{letterpaper,oneside}{book}
\ProcessOptions
\LoadClass{book}
\if@proquest
		\nofiles    % don't overwrite the .aux files
		\def\makeindex{}
		\@thesisfancyfalse
		\@fullpagetrue
\fi
\if@thesisdraft
	\newcount\timehh\newcount\timemm
	\timehh=\time \divide\timehh by 60
	\timemm=\time \count255=\timehh \multiply\count255 by -60
		\advance\timemm by \count255
	\def\draftheader{\slshape Draft of \today\ at
	\ifnum\timehh<10 0\fi\number\timehh\,:\,\ifnum\timemm<10 0\fi\number\timemm}%
\fi
\newcommand{\toclabels}{%
		\addtocontents{toc}{\vspace*{-\baselineskip}\hfill Page\endgraf}%
		\addtocontents{lof}{\vspace*{-\baselineskip}~Figure\hfill Page\endgraf}%
		\addtocontents{lot}{\vspace*{-\baselineskip}~Table\hfill Page\endgraf}}
\def\@mkuptitle#1{\gdef\@Utitle{#1}}
\def\title#1{\gdef\@title{#1}\MakeUppercase{\protect\@mkuptitle{#1}}}
\def\@mkupauthor#1{\gdef\@Uauthor{#1}}
\def\author#1{\gdef\@author{#1}\MakeUppercase{\protect\@mkupauthor{#1}}}
\def\phdthesis{\def\@degree{Doctor of Philosophy}
		\def\degree{Ph.D.}
		\def\@thesisname{Dissertation (2016)}
		}
\def\msthesis{\def\@degree{Master of Science}
		\def\degree{M.S.}
		\def\@thesisname{THESIS}
		}
\newcommand{\otherdoctorate}[2]{\def\@degree{#1}
		\def\degree{#2}
		\def\@thesisname{DISSERTATION}
		}
\newcommand{\othermasters}[2]{\def\@degree{#1}
		\def\degree{#2}
		\def\@thesisname{THESIS}
		}
\def\department#1{\def\@dept{#1}}
\def\college#1{\def\@college{#1}}
\def\schools#1{\def\@schools{#1}}
\def\degreeyear#1{\def\@degreeyear{#1}}
\newcommand{\committee}[1]{\gdef\@committee{#1}}
\newcommand*{\volume}[1]{\gdef\thesis@volume{VOLUME~#1}}
\newcommand*{\thesis@volume}{}
\if@edeposit
	\gdef\@committee{%
		\ClassError{uiucthesis}{A committee must be specified for e-deposit dissertations.}%
		{Use \protect\committee\space with members separated by \protect\\'s.}}
\fi
\def\copyrightnotice{\copyright~\@degreeyear~by \@author. All rights reserved.}
\newif\if@thesiscrpage \@thesiscrpagetrue
\let\nocopyrightpage\@thesiscrpagefalse
\if@thesisdraft\nocopyrightpage\fi
\phdthesis
\department{Computer Science}
\college{Graduate College}
\def\@schools{}
\def\@degreeyear{\number\year}
\renewcommand\maketitle{
		%\if@thesiscrpage
		%    \newpage
		%    \thispagestyle{empty}
		%    \null\vfill
		%    \centerline{\copyrightnotice}%
		%    \vskip 3ex % skip to visually center copyright notice
		%    \vfill
		%\fi
		%\newpage
		\thispagestyle{empty}%
		\enlargethispage{1in}%
		\begingroup
		\def\baselinestretch{1}
		\ifnum \@ptsize=2
				\@normalsize
				\newcommand{\thesis@small}{\small}
		\else
				\large
				\newcommand{\thesis@small}{\@normalsize}
		\fi
		\headheight=0pt \headsep=0pt
		\topmargin=0in
		\@tempdima=\paperwidth
		\advance\@tempdima by -\textwidth
		\divide\@tempdima by 2
		\advance\@tempdima by -1in
		\oddsidemargin=\@tempdima
		\let\evensidemargin=\oddsidemargin
		\newdimen\thesis@dim
		\if@edeposit
				\thesis@dim=1.25in
		\else
				\thesis@dim=1.3in
		\fi
		\if@largecaps
				\def\lc@selectfont{\fontshape{lc}\selectfont}%
		\else
				\def\lc@selectfont{}%
		\fi
		\begin{center}
		\if@edeposit\else
				\vbox to 0.4in{}
		\fi
		\vbox to \thesis@dim{%
				{\Large\textsc{\@title}}
				\if@thesisdraft
				\\[12pt]
				\draftheader
				\fi
				\vfil}%
        \vbox to 3.2in{%
				{\Large \textsc{\@thesisname}}\\[10mm]
				\textsc{Submitted to the \@schools,
                \@college} \\[7mm]
                %
                \textsc{\Large {\'E}cole Polytechnique F{\'e}d{\'e}rale de Lausanne (EPFL)}\\[7mm]
				%{\small (Swiss Federal Insitute of Technology Lausanne)}
                %
				\textsc{in partial fulfillment of the requirements for the degree of \@degree} \\
				\vfil}
		\vbox to 1.5in{%
				\textsf{by}\\[12pt]
				{\Large\textsc{\@author}}\\[2pt]
				%\textsf{\small MSc in Aerospace Engineering, Sharif University of Technology, 2008}\\[12pt]
				%\begin{tabular}{c}\@schools\end{tabular}
				\vfil}%
        \vbox to 1.8in{%
                \textsc{Thesis Committee:}\\[1mm]
   		%		\textsf{Prof. Alireza Karimi, president of the jury}\\
                \textsf{\@advisor, thesis advisor}\\
             %   \textsf{Prof. Hannes Bleuler, examiner}\\
	%			\textsf{Prof. Jochen Steil, examiner}\\
	%			\textsf{Prof. Ron Alterovitz, examiner}\\
                \vfil}%
		%\vbox to 0.5in{\thesis@volume\vfil}
		\textsf{Lausanne, Switzerland\\
		\@degreeyear}
		\end{center}
		\newpage
		\endgroup
}
\let\thesis@frontmatter=\frontmatter
\def\frontmatter{%
		\thesis@frontmatter
		\if@edeposit
				\setcounter{page}{2}
		\else
				\setcounter{page}{1}
		\fi}
\renewcommand\contentsname{Table of Contents}
\renewcommand*\l@chapter[2]{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus 0.2em \@minus 0.2em
		\setlength\@tempdima{1.5em}
		\begingroup
			\leftskip \z@ \rightskip \@tocrmarg \parfillskip -\rightskip
			\parindent \z@
			\leavevmode \bfseries
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\nobreak
			\leaders\hbox{$\m@th\mkern\@dotsep mu\hbox{.}\mkern\@dotsep mu$}
			\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
\let\thesis@tableofcontents=\tableofcontents
\def\tableofcontents{{\singlespacing\thesis@tableofcontents}}
\let\thesis@listoftables=\listoftables
\def\listoftables{\newpage%
		\addcontentsline{toc}{chapter}{\listtablename}%
		{\singlespacing\thesis@listoftables}}
\let\thesis@listoffigures=\listoffigures
\def\listoffigures{\newpage%
		\addcontentsline{toc}{chapter}{\listfigurename}%
		{\singlespacing\thesis@listoffigures}}
\newcommand*{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand*{\adviser}[1]{\gdef\@advisor{#1}}
\def\abstractname{Abstract}
\def\riassuntoname{Riassunto}
\def\resumename{R$\acute{\textrm{\chaptertitlefont e}}$sum$\acute{\textrm{\chaptertitlefont e}}$}
\if@proquest
 \def\maketitle{}
 \def\@advisor{%
		\ClassError{uiucthesis}{An advisor must be specified for the ProQuest abstract}%
		{Use \protect\advisor\space to specify a name}}
 \newenvironment{abstract}{%
		\newpage
		\pagestyle{empty}
		\setcounter{page}{1}
		\begin{singlespace}\begin{center}
		\@Utitle\\[\baselineskip]
		\@author, \degree\\
		Department of \@dept\\
		{\'E}cole Polytechnique F{\'e}d{\'e}rale de Lausanne (EPFL), \@degreeyear\\
		\@advisor, Adviser\\[\baselineskip]
		\end{center}\end{singlespace}\par\noindent\ignorespaces
		}{
		\newpage
		\aftergroup\enddocument
		\aftergroup\endinput
		}
\else
 \newenvironment{abstract}{\chapter*{\abstractname}}{}
 \newenvironment{resume}{\chapter*{\resumename}}{}
 \newenvironment{riassunto}{\chapter*{\riassuntoname}}{}
\fi
\newenvironment{dedication}{
		\newpage
		\leavevmode\vfill
		\begin{center}
		}{
		\end{center}
		\vskip 3ex
		\vfill
		\newpage
		}
\newenvironment*{symbollist}[1][1in]{
		\begin{list}{}{\singlespacing
		 \setlength{\leftmargin}{#1}
		 \setlength{\labelwidth}{#1}
		 \addtolength{\labelwidth}{-\labelsep}
		 \setlength{\topsep}{0in}}%
		 \def\makelabel##1{\hfil##1\hfil}%
		}{
		\end{list}}
\newenvironment*{symbollist*}[1][1in]{
		\begin{symbollist}[#1]
		\def\makelabel##1{##1\hfil}}
		{\end{symbollist}}
\if@thesisfancy
	\if@thesisestyle
		\font\cmittA=cmssi8 at 14pt
		\font\cmittB=cmssi8 at 16pt
		\font\cmittC=cmcsc10 at 24pt
		\newcommand\chapternamefont{\cmittA}
		\newcommand\chapternumberfont{\cmittB}
	\else
		\font\cminch=cminch at 60pt
		\newcommand\chapternumberfont{\cminch}
	\fi
\else
	\newcommand\chapternumberfont{\huge\bfseries}
\fi
\if@thesisestyle
	\newcommand\chaptertitlefont{\LARGE\cmittC}
\newenvironment{chapterintro}{
		\begin{flushright}
		\itshape
		}{
		\end{flushright}
		\vskip 3ex
		}
\else
	\newcommand\chaptertitlefont{\Huge\bfseries\scshape}
\fi
\def\@chapter[#1]#2{%
	\ifnum \c@secnumdepth >\m@ne
		\if@mainmatter
			\refstepcounter{chapter}%
			\typeout{\@chapapp\space\thechapter.}%
			\if@thesisfancy
				\addcontentsline{toc}{chapter}%
					{\protect\numberline{\thechapter}#1}%
			\else
				\addcontentsline{toc}{chapter}%
					{\@chapapp\ \thechapter\quad #1}%
			\fi
		\else
			\addcontentsline{toc}{chapter}{#1}%
		\fi
	\else
		\addcontentsline{toc}{chapter}{#1}%
	\fi
	\chaptermark{#1}%
	\addtocontents{lof}{\protect\addvspace{10\p@}}%
	\addtocontents{lot}{\protect\addvspace{10\p@}}%
	\if@twocolumn
		\@topnewpage[\@makechapterhead{#2}]%
	\else
		\@makechapterhead{#2}%
		\@afterheading
	\fi}
\newskip\thesis@chapskip
\AtBeginDocument{%
	\newdimen\chapternumberheight
	\begingroup
		\chapternumberfont
		\setbox255=\hbox{A}
		\if@thesisfancy
			\global\thesis@chapskip=\ht255
		\else
			\global\thesis@chapskip=\baselineskip
		\fi
		\dimen255=\ht255
		\chaptertitlefont
		\setbox255=\hbox{A}
		\advance\dimen255 by \ht255
		\if@thesisfancy
			\global\advance\thesis@chapskip by -\ht255
			\global\divide\thesis@chapskip by 2
			\global\advance\thesis@chapskip by 10\p@
		\else
			\global\advance\thesis@chapskip by 20\p@
		\fi
		\divide\dimen255 by 2
		\global\chapternumberheight=\dimen255
	\endgroup}
\newlength{\chaptertitleheight}
\if@thesisfancy
	\if@thesisestyle
		\setlength{\chaptertitleheight}{1.85in}
	\else
		\setlength{\chaptertitleheight}{1.5in}
	\fi
\else
	\setlength{\chaptertitleheight}{1.85in}
\fi
\def\@makechapterhead#1{%
	\vbox to \chaptertitleheight{
		\def\baselinestretch{1}\@normalsize
		\parindent \z@ \raggedright \normalfont
		\if@centerchapter
			\centering
		\fi
			\begin{picture}(\strip@pt\textwidth,1)
				\thicklines
				\put(0,0){\line(1,0){\strip@pt\textwidth}}
			\end{picture}
		\flushright
		\ifnum \c@secnumdepth >\m@ne
			\if@mainmatter
				\thesis@chapskip=\z@
				\if@thesisfancy
					\if@thesisestyle
						{\chapternamefont\@chapapp\space\chapternumberfont\thechapter}
						\par\nobreak
						\vskip 20\p@
					\else
						\vspace*{10\p@}%
						\leavevmode\llap{\vbox to \chapternumberheight{\hbox{%
						\chapternumberfont\thechapter\,}\vss}}%
					\fi
				\else
					{\chapternumberfont \@chapapp\space\thechapter}
					\par\nobreak
					\vskip 20\p@
				%\fi
			\fi
		\fi
		\interlinepenalty\@M
		\vspace*{\thesis@chapskip}%
		\chaptertitlefont #1
		\vfil
	}%
	\par\nobreak%
	}
\def\@makeschapterhead#1{%
	\vbox to \chaptertitleheight{
		\def\baselinestretch{1}\@normalsize
		\parindent \z@ \raggedright \normalfont
		\if@centerchapter
			\centering
		\fi
			\begin{picture}(\strip@pt\textwidth,1)
				\thicklines
				\put(0,0){\line(1,0){\strip@pt\textwidth}}
			\end{picture}
		\flushright
		\interlinepenalty\@M
		\vspace*{\thesis@chapskip}
		\chaptertitlefont #1
		\vfil
	}%
	\par\nobreak%
	}
\newcommand{\sectiontitlefont}{\Large\bfseries\scshape}
\newcommand{\subsectiontitlefont}{\large\scshape}
\newcommand{\subsubsectiontitlefont}{\normalsize\scshape}
\newcommand\sectionstd{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\raggedright\normalfont\sectiontitlefont}
}
\renewcommand{\section}[1]{
	\sectionstd{#1}
	\vskip -0.70cm
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
}
			
			
\newcommand\subsectionstd{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\raggedright\normalfont\subsectiontitlefont}}
\renewcommand{\subsection}[1]{
	\subsectionstd{#1}
	\vskip -0.6cm
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
}
\newcommand\subsubsectionstd{\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\raggedright\normalfont\subsubsectiontitlefont}}
\renewcommand{\subsubsection}[1]{
	\subsubsectionstd{#1}
	\vskip -0.6cm
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
}
\newcommand{\summary}{
	\noindent
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
	\textbf{\textsf{Summary}}
	\vspace{-2.5mm}
	\newline
	\noindent
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
	\newline
	\vspace{-2.5mm}
}
\newcommand{\drawsep}{
	\noindent
	\begin{picture}(\strip@pt\textwidth,1)
		\thinlines
		\put(0,0){\line(1,0){\strip@pt\textwidth}}
	\end{picture}
}

\renewcommand{\fnum@figure}{\small \textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\small \textbf{\tablename~\thetable}}
\let\thesis@appendix\appendix
\renewcommand\appendix{\thesis@appendix\@ifstar{\gdef\thechapter{}}{}}
\renewcommand\bibname{References}
\AtBeginDocument{\let\thesis@thebib\thebibliography
		\let\thesis@endbib\endthebibliography
		\def\thebibliography{\begingroup\singlespacing%
				\chapter{\bibname}%
				\let\chapter\@gobbletwo%
				\thesis@thebib}
		\def\endthebibliography{\thesis@endbib\endgroup}}
\let\thesis@theindex=\theindex
\def\theindex{\addcontentsline{toc}{chapter}{\indexname}%
		\begingroup\singlespacing\thesis@theindex}
\let\thesis@endtheindex=\endtheindex
\def\endtheindex{\thesis@endtheindex\endgroup}
\topmargin=0pt
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\textheight 8.9in
\if@fullpage
	\setlength{\textwidth}{\paperwidth}
	\addtolength{\textwidth}{-2in}
	\@settopoint\textwidth
\fi
\setlength{\@tempdima}{\paperwidth}
\addtolength{\@tempdima}{-\textwidth}
\setlength{\oddsidemargin}{.5\@tempdima}
\addtolength{\oddsidemargin}{-1in}
\if@thesisoffcenter
	\addtolength{\oddsidemargin}{0.5in}
	\reversemarginpar
\fi
\setlength{\marginparwidth}{\oddsidemargin}
\addtolength{\marginparwidth}{1in}
\addtolength{\marginparwidth}{-\marginparsep}
\addtolength{\marginparwidth}{-24pt}
\@settopoint\oddsidemargin
\@settopoint\marginparwidth
\setlength{\evensidemargin}{\oddsidemargin}
\if@thesisdraft
		\newcommand{\note}[1]{\marginpar{\def\baselinestretch{1}\small\raggedright #1}}
\else
		\newcommand{\note}[1]{}
		\let\thesis@marginpar\marginpar
		\def\marginpar{%
				\ClassWarning{uiucthesis}{Margin paragraphs fall outside the allowed margins\MessageBreak
						for UIUC Theses, use \protect\note\space instead of \protect\marginpar.}%
				\thesis@marginpar}
\fi
\def\ps@plain{%
	\let\@mkboth\@gobbletwo
	\if@thesisdraft
		\def\@oddhead{\draftheader\hfil}
	\else
		\let\@oddhead\@empty
	\fi
	\let\@evenhead\@oddhead
	\def\@oddfoot{\reset@font\hfil\thepage\hfil}%
	\let\@evenfoot\@oddfoot
}
\if@twoside
	\def\ps@headings{%
		\if@thesisdraft
			\def\@oddhead{\draftheader\hfil\slshape\rightmark}
			\def\@evenhead{\slshape\leftmark\hfil\draftheader}
		\else
			\def\@oddhead{\hfil\slshape\rightmark}
			\def\@evenhead{\slshape\leftmark\hfil}
		\fi
		\def\@oddfoot{\reset@font\hfil\thepage\hfil}%
		\let\@evenfoot\@oddfoot
		\let\@mkboth\markboth
		\if@thesisdraft
			\def\chaptermark##1{%
				\markboth {\MakeUppercase{%
					\ifnum \c@secnumdepth >\m@ne
						\if@mainmatter
							\@chapapp\ \thechapter%
						\fi
					\fi}}{}}
		\else
			\def\chaptermark##1{%
				\def\@chaphead{\MakeUppercase{%
					\ifnum \c@secnumdepth >\m@ne
						\if@mainmatter
							\if@thesisfancy
								\thechapter.~~%
							\else
								\@chapapp\ \thechapter.~~%
							\fi
						\fi
					\fi
					##1}}%
				\markboth{\@chaphead}{\@chaphead}}
		\fi
		\def\sectionmark##1{%
			\markright {\MakeUppercase{%
				\ifnum \c@secnumdepth >\z@
					\thesection. \ %
				\fi
				##1}}}}
\else
	\def\ps@headings{%
		\if@thesisdraft
			\def\@oddhead{\draftheader\hfil\slshape\rightmark}
		\else
			\def\@oddhead{\hfil\slshape\rightmark\hfil}
		\fi
		\let\@evenhead\@oddhead
		\def\@oddfoot{\reset@font\hfil\thepage\hfil}%
		\let\@evenfoot\@oddfoot
		\let\@mkboth\markboth
		\if@thesisdraft
			\def\chaptermark##1{%
				\markright {\MakeUppercase{%
					\ifnum \c@secnumdepth >\m@ne
						\if@mainmatter
							\@chapapp\ \thechapter%
						\fi
					\fi}}}
		\else
			\def\chaptermark##1{%
				\markright {\MakeUppercase{%
					\ifnum \c@secnumdepth >\m@ne
						\if@mainmatter
							\if@thesisfancy
								\thechapter.~~%
							\else
								\@chapapp\ \thechapter.~~%
							\fi
						\fi
					\fi
					##1}}}
		\fi
		 }
\fi
\pagestyle{plain}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
	\@mkboth{}{}
	\thispagestyle{plain}
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter}
\newcommand\vitaname{Vita}
\newcommand\vita{
	\chapter{\vitaname}%
}
\def\thesisspacing{\if@fullpage\doublespacing\else\onehalfspacing\fi}
\pagenumbering{roman}
\AtBeginDocument{\thesisspacing}
\def\preliminary{\frontmatter}
\let\endpreliminary=\relax
\def\thesis{\mainmatter}
\let\endthesis=\relax


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% redefininition of the captions for "figure" and "table" environments
%
\@ifundefined{floatlegendstyle}{\def\floatlegendstyle{\bfseries}}{}
\def\floatcounterend{\enspace}
\def\capstrut{\vrule\@width\z@\@height\topskip}
\@ifundefined{captionstyle}{\def\captionstyle{\normalfont\small}}{}
\@ifundefined{instindent}{\newdimen\instindent}{}

\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore\if@minipage\@setminipage\fi
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}

\def\twocaptionwidth#1#2{\def\first@capwidth{#1}\def\second@capwidth{#2}}
% Default: .46\textwidth
\twocaptionwidth{.46\textwidth}{.46\textwidth}

\def\leftcaption{\refstepcounter\@captype\@dblarg%
            {\@leftcaption\@captype}}

\def\rightcaption{\refstepcounter\@captype\@dblarg%
            {\@rightcaption\@captype}}

\long\def\@leftcaption#1[#2]#3{\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore
    \vskip\figcapgap
    \@maketwocaptions{\csname fnum@#1\endcsname}{\ignorespaces #3}%
    {\first@capwidth}\ignorespaces\hspace{.073\textwidth}\hfill%
  \endgroup}

\long\def\@rightcaption#1[#2]#3{\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore
    \@maketwocaptions{\csname fnum@#1\endcsname}{\ignorespaces #3}%
    {\second@capwidth}\par
  \endgroup}

\long\def\@maketwocaptions#1#2#3{%
   \parbox[t]{#3}{{\floatlegendstyle #1\floatcounterend}#2}}

\def\fig@pos{l}
\newcommand{\leftfigure}[2][\fig@pos]{\makebox[.4635\textwidth][#1]{#2}}
\let\rightfigure\leftfigure

\newdimen\figgap\figgap=0.5cm  % hgap between figure and sidecaption
%
\long\def\@makesidecaption#1#2{\@tempdimb=3.6cm
   \setbox0=\vbox{\hsize=\@tempdimb
                  \captionstyle{\floatlegendstyle
                                         #1\floatcounterend}#2}%
   \ifdim\instindent<\z@
      \ifdim\ht0>-\instindent
         \advance\instindent by\ht0
         \typeout{^^JClass-Warning: Legend of \string\sidecaption\space for
                     \@captype\space\csname the\@captype\endcsname
                  ^^Jis \the\instindent\space taller than the corresponding float -
                  ^^Jyou'd better switch the environment. }%
         \instindent\z@
      \fi
   \else
      \ifdim\ht0<\instindent
         \advance\instindent by-\ht0
         \advance\instindent by-\dp0\relax
         \advance\instindent by\topskip
         \advance\instindent by-11\p@
      \else
         \advance\instindent by-\ht0
         \instindent=-\instindent
         \typeout{^^JClass-Warning: Legend of \string\sidecaption\space for
                     \@captype\space\csname the\@captype\endcsname
                  ^^Jis \the\instindent\space taller than the corresponding float -
                  ^^Jyou'd better switch the environment. }%
         \instindent\z@
      \fi
   \fi
   \parbox[b]{\@tempdimb}{\captionstyle{\floatlegendstyle
                                        #1\floatcounterend}#2%
                          \ifdim\instindent>\z@ \\
                               \vrule\@width\z@\@height\instindent
                                     \@depth\z@
                          \fi}}
\def\sidecaption{\@ifnextchar[\sidec@ption{\sidec@ption[b]}}
%
\newbox\bildb@x
%
\def\sidec@ption[#1]#2\caption{%
\setbox\bildb@x=\hbox{\ignorespaces#2\unskip}%
\if@twocolumn
 \ifdim\hsize<\textwidth\else
   \ifdim\wd\bildb@x<\columnwidth
      \typeout{Double column float fits into single column -
            ^^Jyou'd better switch the environment. }%
   \fi
 \fi
\fi
  \instindent=\ht\bildb@x
  \advance\instindent by\dp\bildb@x
\if t#1
\else
  \instindent=-\instindent
\fi
\@tempdimb=\hsize
\advance\@tempdimb by-\figgap
\advance\@tempdimb by-\wd\bildb@x
\ifdim\@tempdimb<3.6cm
   \ClassWarning{SVMult}{\string\sidecaption: No sufficient room for the legend;
             ^^Jusing normal \string\caption}%
   \unhbox\bildb@x
   \let\@capcommand=\@caption
\else
%  \ifdim\@tempdimb<4.5cm
%     \ClassWarning{SVMono}{\string\sidecaption: Room for the legend very narrow;
%              ^^Jusing \string\raggedright}%
      \toks@\expandafter{\captionstyle\sloppy
                         \rightskip=\z@\@plus6mm\relax}%
      \def\captionstyle{\the\toks@}%
%  \fi
   \let\@capcommand=\@sidecaption
%  \leavevmode
%  \unhbox\bildb@x
%  \hfill
\fi
\refstepcounter\@captype
\@dblarg{\@capcommand\@captype}}
\long\def\@sidecaption#1[#2]#3{\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore
    \@makesidecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}%
    \hfill
    \unhbox\bildb@x
    \par
  \endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\fig@type{figure}

\def\leftlegendglue{\relax}
\newdimen\figcapgap\figcapgap=5\p@   % vgap between figure and caption
\newdimen\tabcapgap\tabcapgap=3\p@ % vgap between caption and table

\long\def\@makecaption#1#2{%
 \captionstyle
 \ifx\@captype\fig@type
   \vskip\figcapgap
 \fi
 \setbox\@tempboxa\hbox{{\floatlegendstyle #1\floatcounterend}%
 \capstrut #2}%
 \ifdim \wd\@tempboxa >\hsize
   {\floatlegendstyle #1\floatcounterend}\capstrut #2\par
 \else
   \hbox to\hsize{\leftlegendglue\unhbox\@tempboxa\hfil}%
 \fi
 \ifx\@captype\fig@type\else
   \vskip\tabcapgap
 \fi}

\newcounter{merk}

\def\endfigure{\resetsubfig\end@float}

\@namedef{endfigure*}{\resetsubfig\end@dblfloat}

\def\resetsubfig{\global\let\last@subfig=\undefined}

\def\r@setsubfig{\xdef\last@subfig{\number\value{figure}}%
\setcounter{figure}{\value{merk}}%
\setcounter{merk}{0}}

\def\subfigures{\refstepcounter{figure}%
   \@tempcnta=\value{merk}%
   \setcounter{merk}{\value{figure}}%
   \setcounter{figure}{\the\@tempcnta}%
   \def\thefigure{\if@numart\else\thechapter.\fi
   \@arabic\c@merk\alph{figure}}%
   \let\resetsubfig=\r@setsubfig}

\def\samenumber{\addtocounter{\@captype}{-1}%
\@ifundefined{last@subfig}{}{\setcounter{merk}{\last@subfig}}}
\endinput


%%
%% End of file `uiucthesis.cls'.
