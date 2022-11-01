AddStr(fID,'\section{Намагничивающий ток}');
AddStr(fID,'\label{sec:current}');

AddStr(fID,'Номинальное фазное напряжение обмотки статора:');




%{
ResultVar = 'R';
VarList = ' ';
InputFormula = '220';
FormulaLabel = 'eq1';
ADD_FORMULA

ResultVar = 'I';
VarList = 'U1n R';
InputFormula = 'U1n/R';
FormulaLabel = 'eq2';
ADD_FORMULA




Эксперимент подробно описан в разделе~\ref{sec:exp} на
стр.~\pageref{sec:exp}.

\section{Описание эксперимента}
\label{sec:exp}

\subsection{Триггер}
\label{sec:exp:trigger}

\subsubsection{Случайный триггер}
\label{sec:exp:trigger:rnd}

%}