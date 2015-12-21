%
% University of Science and Technology Beijing Thesis Template
% For Bachelor Master and Doctor
%
%   Version
%       0.1
%   Created 
%       2015.12.21 by JeffHugh@USTC
%   Last Modified
%       2015.12.21 by JeffHugh@USTC
%

%%%%%%%%%% class clarification %%%%%%%%%%
% 模板声明
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{ustbthesis}
              [2015/12/21 v0.1 USTCthesis document class.]

%%%%%%%%%% class options %%%%%%%%%%
% 模板选项
% 本模板自身包含五个选项
% 前四个为对应学位类型，决定不同样式
% 第五个为颜色选项，用于电子版的情况
\newif\ifustb@bachelor\ustb@bachelorfalse
\newif\ifustb@master\ustb@mastertrue
\newif\ifustb@engineer\ustb@engineerfalse
\newif\ifustb@doctor\ustb@doctorfalse
\newif\ifustb@color\ustb@colorfalse
\newif\ifustb@twoteacher\ustb@twoteacherfalse
\DeclareOption{bachelor}{\ustb@bachelortrue}
\DeclareOption{master}{\ustb@mastertrue}
\DeclareOption{engineer}{\ustb@engineertrue}
\DeclareOption{doctor}{\ustb@doctortrue}
\DeclareOption{color}{\ustb@colortrue}
\DeclareOption{twoteacher}{\ustb@twoteachertrue}
% 其余选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
% 引用ctexbook及基本设置
\LoadClass[cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]