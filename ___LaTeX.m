% ������ ���������� � LaTeX
  function LaTeX(Name, varargin)

% ��������� �� ���������
  % ����� ����������:
  % 'Full' - ������ ����������
  % 'Test' - ������� ���������� �� ���� ������
    CompileMode = 'Full';
  % ����� ������ DOS ���������:
  % 'DOSout' - � ��������� ���� CMD
  % 'MATLABout' - dos-��������� �������� � ��������� ������ �������
	DOSoutMode = 'MATLABout';
% ����������� ���������� ����������
  % ���� �����������
    PASS = 'no';
	N_ARGS = length(varargin);
    for i = 1:N_ARGS
	  if(strcmp(lower(PASS), 'no'))
	    PARAM = char(varargin(i));
	    switch lower(PARAM)
		  % ��������� � �����������
		    % ������ ��� ��������� � ����������
	          case 'SomeArgs'
		        if(i < N_ARGS)
			      PASS = 'yes';
			      % ��������
			    end
		  % ��������� ��� ����������
		    % ����� ������ ����������
			  case 'test'
                CompileMode = 'Test';
			  case 'DOSout'
			    DOSoutMode = 'DOSout';
	    end
	  else
	    PASS = 'no';
	  end
	end
% ��������� ���������� DOS
  switch (lower(DOSoutMode))
    case 'dosout'
	  DOSPARAM = '&';
	case 'matlabout'
	  DOSPARAM = '';
  end
% ������ ���������� LaTeX-����� (32 - ������)
  % ���� ����� ��������, �� ������ ���� ������, ����� 3
    switch (lower(CompileMode))
	  case 'test'
       dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	  case 'full'
       dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	   dos(strcat('bibtex8.exe --huge --csfile "cp1251.csf"', 32, Name, 32, DOSPARAM));
	   dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	   dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	end
% ������ ������������
  dos(strcat('start "C:\Program Files\Foxit Software\Foxit Reader\Foxit Reader.exe"', 32, Name,'.pdf'));
