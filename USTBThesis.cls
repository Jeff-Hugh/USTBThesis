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
\newcommand{\teacher}[3]{%
    \def\TeacherCN{#1}
    \def\TeacherEN{#2}
    \def\TeacherDepartment{#3}
}

% 副指导老师
\def\SubTeacherCN{}
\def\SubTeacherEN{}
\def\SubTeacherDepartment{}
\newcommand{\subteacher}[3]{%
    \def\SubTeacherCN{#1}
    \def\SubTeacherEN{#2}
    \def\SubTeacherDepartment{#3}
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