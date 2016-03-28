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

\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]

\usepackage[dvips]{graphicx}        %竖排文字
\usepackage{ulem}               %下划线强调
\usepackage{fancyhdr}           %页眉页脚
\usepackage{mathptmx}   %是英文字体为Times New Roman
\usepackage{tabu}  %表格
\usepackage{booktabs}   %表格
\usepackage{multirow}   %表格合并
\usepackage{multicol}   %表格合并
\usepackage{longtable}  %表格合并
\usepackage{rotating}   %表格合并
\usepackage[top=30mm, bottom=20mm, left=30mm, right=30mm]{geometry}  %页面边距设置
\usepackage{graphicx}   %插图
\usepackage{amsmath}    %公式换行

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

%%%%%%%%%%%%%%%%%%%%定义标题格式%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{\section}{%
%
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%定义致谢%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{USTBthanks}{%
\heiti \zihao{2} \chapter*{致 \qquad 谢} \par 
\songti \zihao{-4}}{\par}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%定义摘要%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{USTBAbstractCN}{%
\heiti \zihao{2} \chapter*{摘 \qquad 要} \par
\songti \zihao{-4}}{\par }

\newenvironment{USTBAbstractEN}{%
\heiti \zihao{2} \chapter*{Abstract} \par
\zihao{-4}}{\par }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%定义致谢%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{USTBPreface}{%
\heiti \zihao{2} \chapter*{序} \par
\songti \zihao{-4}}{\par}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%