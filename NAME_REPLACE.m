str_find='\\mathrm';
str_replace = '';
LatexFormula = regexprep(LatexFormula, str_find, str_replace);

str_find='U1n';
str_replace = 'U_{1н}';
LatexFormula = regexprep(LatexFormula, str_find, str_replace);

str_find='U2n';
str_replace = 'U_{2н}';
LatexFormula = regexprep(LatexFormula, str_find, str_replace);
