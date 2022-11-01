%%%%%%%%%%%%%%%%%%%%%%%%%%
INIT;
FILE_OPEN;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%
DOC_PREAMBLE;
%%%%%%%%%%%%%%%%%%%%%%%%%%
DOC_BEGIN;
%%%%%%%%%%%%%%%%%%%%%%%%%%
DOC_TITTLE;
DOC_INTRO;
%DOC_CH1;
%%%%%%%%%%%%%%%%%%%%%%%%%%
DOC_END;
%%%%%%%%%%%%%%%%%%%%%%%%%%
%NAME_REPLACE;
%%%%%%%%%%%%%%%%%%%%%%%%%%
FILE_CLOSE;
LATEX_COMPILE;
%%%%%%%%%%%%%%%%%%%%%%%%%%



%{

clc
clear
syms t beta_1 omega
alpha_2=atan(tan(t*omega)/cos(beta_1))
ddalpha_2=diff(alpha_2,t,2)
tex_out_alpha_2 = latex(alpha_2)
tex_out_ddalpha_2 = latex(ddalpha_2)

%find 'beta'  and replace on  '\\beta'
str_find='beta'
str_replace = '\\beta'
str_out = regexprep(tex_out_alpha_2, str_find, str_replace)

%find 'omega'  and replace on  '\\omega' 
str_find ='omega'
str_replace = '\\omega'
str_out = regexprep(str_out, str_find, str_replace)


%}