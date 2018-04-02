% !Mode:: "TeX:UTF-8"
% University of Science and Technology Beijing Thesis Template
% For Bachelor Master and Doctor
%
%   Version
%       0.1
%   Created
%       2015.12.21 by JeffHugh@USTB
%   Last Modified
%       2015.12.21 by JeffHugh@USTB
%

%%%%%%%%%% class clarification %%%%%%%%%%
%
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{USTBThesis}[2015/12/21 v0.1 USTBthesis document class]

%定义模板学位选项
\newif\ifustb@master\ustb@masterfalse
\newif\ifustb@doctor\ustb@doctorfalse
\DeclareOption{master}{\ustb@mastertrue}
\DeclareOption{doctor}{\ustb@doctortrue}
% 其余选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[cs4size,a4paper,fancyhdr,twoside,UTF8]{ctexbook}[2007/10/19]


%主要字体设置
\setCJKmainfont{SimSun}
\setmainfont{Times New Roman}

\RequirePackage[pdfstartview=FitH, CJKbookmarks=true, bookmarksnumbered=true,bookmarksopen=true, colorlinks=false, colorlinks=black,pdfborder=100, citecolor=black ]{hyperref}		% 书签设置
\RequirePackage[super,square,numbers,sort&compress]{natbib}	%参考文献设置
\RequirePackage{ulem}               %下划线强调
\RequirePackage{fancyhdr}           %页眉页脚
\RequirePackage{mathptmx}   %是英文字体为Times New Roman
\RequirePackage{tabu}  %表格
\RequirePackage{booktabs}   %表格线宏包
\RequirePackage{tabularx}   %调整表格列宽
\RequirePackage{multirow}   %表格合并
\RequirePackage{array}      %数组宏包，用于表格宽度
\RequirePackage{multicol}   %表格合并
\RequirePackage{longtable}  %表格合并
\RequirePackage{rotating}   %表格合并
\RequirePackage[top=30mm, bottom=20mm, left=30mm, right=30mm]{geometry}  %页面边距设置
\RequirePackage{graphicx}   %插图
\RequirePackage{amsmath,bm}    %公式换行
\RequirePackage{titletoc}   %目录
\RequirePackage{titlesec}	%章节
\RequirePackage{listings}   %插入代码
\RequirePackage{texnames}   %TeX家族标识符
\RequirePackage{float}      %表格位置
\RequirePackage{setspace}   %调整行距
\RequirePackage{lastpage}   %得到论文页数
\RequirePackage{subfig}
\RequirePackage{enumerate}	%自定义列表编号

\RequirePackage{listings}   %插入程序代码
\lstset{breaklines} %这条命令可以让LaTeX自动将长的代码行换行排版
\lstset{extendedchars=false}    %这一条命令可以解决代码跨页时，章节标题，页眉等汉字不显示的问题

%\usepackage{CJKvert}    %直排文字
%%%%%%%%%%%%%%%%%%%%%%%%%论文信息%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%学校
\def\UniversityCN{北京科技大学}
\def\UniversityEN{University of Science and Technology Beijing}
\newcommand{\university}[2]{%
    \def\UniversityCN{#1}
    \def\UniversityEN{#2}
}

%学院
\def\SchoolCN{土木与环境工程学院}
\def\SchoolEN{School of Civil and Environmental Engineering}
\newcommand{\school}[2]{%
    \def\SchoolCN{#1}
   \def\SchoolEN{#2}
}

%专业
\def\MajorCN{}
\def\MajorEN{}
\newcommand{\major}[2]{%
    \def\MajorCN{#1}
    \def\MajorEN{#2}
}

%学位
\def\degreecn{}
\def\degreeen{}
\newcommand{\degree}[2]{%
    \def\degreecn{#1}
    \def\degreeen{#2}
}
\ifustb@doctor
    \degree{博士}{Doctor of Philosophy}
\else
    \ifustb@master
        \degree{硕士}{Master}
    \fi
\fi

%论文标题
\def\ThesisTitleCN{}
\def\ThesisTitleEN{}
\def\ThesisSubTitleCN{}
\def\ThesisSubTitleEN{}
\newcommand{\thesistitle}[4]{%
    \def\ThesisTitleCN{#1}
    \def\ThesisTitleEN{#2}
    \def\ThesisSubTitleCN{#3}
    \def\ThesisSubTitleEN{#4}
}

%作者
\def\AuthorCN{}
\def\AuthorEN{}
\newcommand{\thesisauthor}[2]{%
    \def\AuthorCN{#1}
    \def\AuthorEN{#2}
}

%学号
\def\StudentID{}
\newcommand{\authorid}[1]{%
    \def\StudentID{#1}
}

% 指导老师
\def\TeacherCN{}
\def\TeacherEN{}
\def\TeacherDepartment{}
\def\TeacherJobtitle{}
\newcommand{\teacher}[4]{%
    \def\TeacherCN{#1}
    \def\TeacherEN{#2}
    \def\TeacherDepartment{#3}
    \def\TeacherJobtitle{#4}
}

% 副指导老师
\def\SubTeacherCN{}
\def\SubTeacherEN{}
\def\SubTeacherDepartment{}
\def\SubTeacherJobtitle{}
\newcommand{\subteacher}[4]{%
    \def\SubTeacherCN{#1}
    \def\SubTeacherEN{#2}
    \def\SubTeacherDepartment{#3}
    \def\SubTeacherJobtitle{#4}
}

% 分类号
\def\ThesisCategory{}
\newcommand{\category}[1]{%
    \def\ThesisCategory{#1}
}

% 论文提交日期
\def\ThesisYear{}
\def\ThesisMonth{}
\def\ThesisDay{}
\newcommand{\thesisdate}[3]{%
    \def\ThesisYear{#1}
    \def\ThesisMonth{#2}
    \def\ThesisDay{#3}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%一级标题
\def\@chapter[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
        \if@mainmatter
            \refstepcounter{chapter}%
            %\typeout{\@chapapp\space\thechapter}
            \typeout{\CTEXthechapter}%
            \addcontentsline{toc}{chapter}
            %{\protect\numberline {\thechapter}#1}%
            {\protect\numberline{\CTEXthechapter\hspace{0.3em}}#1}%
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
    \fi
}
 
\def\@makechapterhead#1{%
    \vskip 17pt
    %\vspace*{\CTEX@chapter@beforeskip}%
    {\normalfont \parindent \z@ \raggedright
    %{\normalfont \parindent \CTEX@chapter@indent \CTEX@chapter@format
    \ifnum \c@secnumdepth >\m@ne
        \if@mainmatter
            %  \bfseries \space\nobreak
            %\vskip 20\p@  \@chapapp \thechapter
            \CTEX@chaptername \zihao{-3} \heiti
        \fi
    \fi
    \interlinepenalty\@M
    %\Huge \bfseries #1\par\nobreak
    \CTEX@chapter@titleformat #1\par\nobreak
    \vskip 17pt
    %\vskip \CTEX@chapter@afterskip
    }
}

%%%%%%%二级标题
\renewcommand\section{\@startsection{section}{1}{\z@}%
    {13pt \@plus 2pt \@minus 2pt}%
    {13pt \@plus 2pt \@minus 2pt}%
    { \zihao{4} \raggedright \bf \heiti}%
}
%%%%%%%三级标题
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
    {13pt \@plus 2pt \@minus 2pt}%
    {13pt \@plus 2pt \@minus 2pt}%
    { \zihao{4} \raggedright \bf \heiti}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 设置行距
\renewcommand{\baselinestretch}{1.3} \normalsize
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%公式、图名和表名用“2-3”形式表示
\makeatletter
\numberwithin{figure}{chapter}
\numberwithin{table}{chapter}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\@addtoreset{equation}{chapter}
\makeatother
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}

\RequirePackage{caption}    %图表标题设置
\DeclareCaptionFont{heiti}{\heiti}
\DeclareCaptionFont{wuhao}{\zihao{5}}
\captionsetup[table]{font={wuhao,bf,heiti},labelsep=space,skip=0.5ex,
    position=top}
\captionsetup[figure]{font={wuhao,bf,heiti},labelsep=space,skip=0.5ex,
    position=bottom}
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%目录%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\contentsname}{\centering 目\quad 录}
\titlecontents{chapter}[0pt]{\heiti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{section}[2em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
\titlecontents{subsection}[4em]{\vspace{0.1\baselineskip}\songti\zihao{-4}}{\thecontentslabel\ }{}
        {\hspace{.5em}\titlerule*[4pt]{$\cdot$}\contentspage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%定义摄氏度单位符号 \celsius ，在公式和文本中都可使用%%%%
\def\celsius{\ensuremath{^\circ\hspace{-0.09em}\mathrm{C}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
