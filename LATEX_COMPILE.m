%DOSPARAM = '&'; %DOS out
DOSPARAM = '';  %MATLAB out

dos(strcat('D:\texlive\2016\bin\win32\pdflatex',32,'main.tex',32, DOSPARAM));

dos(strcat('main.pdf',32,DOSPARAM));

%{dos(strcat('D:\texlive\2016\bin\win32\bibtex8.exe --huge --csfile "cp1251.csf"', 32, 'main.tex', 32, DOSPARAM));
dos(strcat('D:\texlive\2016\bin\win32\pdflatex', 32, 'main.tex', 32, DOSPARAM));
dos(strcat('D:\texlive\2016\bin\win32\pdflatex', 32, 'main.tex', 32, DOSPARAM));%}


