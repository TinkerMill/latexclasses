% tinkermill.cls
% Style class for TinkerMill handouts.
% Daniel Williams <dwilliams@port8080.net>

% --- Class structure: identification part ---
\ProvidesClass{tinkermill}[2014/03/17 version 0.1 TinkerMill Styling]
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: declaration of options part ---
% This class extends the article class
% Read all the documentclass options; pass them to article,
% unless the file "<currentoption>.min" exists, then it is loaded
\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
\PassOptionsToClass{\CurrentOption}{article}}}

% --- Class structure: execution of options part ---
\ProcessOptions \relax

% --- Class structure: declaration of options part ---
\LoadClass{article}

%\pagestyle{followingpage}
%\AtBeginDocument{\thispagestyle{firstpage}}

\usepackage{fancyhdr}
\usepackage[letterpaper]{geometry}
\usepackage{changepage}
\usepackage{lastpage}
\usepackage{tabularx}
\usepackage{graphicx}
\usepackage{float}
\usepackage[section]{placeins}
\usepackage[section=subsection,numberedsection=nolabel,nonumberlist]{glossaries}
\usepackage{makeidx}

% Renew the \titleinfo command to make this correct
%%% Need a high res logo for this
\newcommand{\titleinfo}{Document}
\title{\includegraphics[width=2.0in]{latexclasses/tm_icon.png} \\ \titleinfo}
%\newcommand{\authorinfo}{TinkerMill}
%\author{Written by \authorinfo \\ for TinkerMill}
\author{TinkerMill}

\lhead{\titleinfo}
\chead{}
\rhead{\includegraphics[width=0.25in]{latexclasses/tm_icon.png}}
\lfoot{www.tinkermill.org}
\cfoot{}
\rfoot{\thepage\ of \pageref{LastPage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\pagestyle{fancy}
