function AddFormula(fID,InputVarList,Formula,ResultVar);

eval(['syms ' InputVarList ';']);
eval(['Formula=',InputFormula ';']);
LatexFormula = latex(Formula);

str_find='Formula';
str_replace = ResultVar;
LatexFormula = regexprep(LatexFormula, str_find, str_replace);



LaTeX_VarNameReplace;

AddStr(fID,strcat('\begin{equation}\label{',FormulaLabel,'}'));

AddStr(fID,LatexFormula);

AddStr(fID,'\end{equation}');

subs(ResultVar);
