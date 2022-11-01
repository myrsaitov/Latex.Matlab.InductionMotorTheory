% ‡апуск компиляции в LaTeX
  function LaTeX(Name, varargin)

% Џараметры по умолчанию
  % Режим компиляции:
  % 'Full' - полная компиляция
  % 'Test' - быстрая компиляция за один проход
    CompileMode = 'Full';
  % Режим вывода DOS сообщений:
  % 'DOSout' - в отдельное окно CMD
  % 'MATLABout' - dos-сообщения выдаются в командной строке матлаба
	DOSoutMode = 'MATLABout';
% Расшифровка переданных параметров
  % Цикл расшифровки
    PASS = 'no';
	N_ARGS = length(varargin);
    for i = 1:N_ARGS
	  if(strcmp(lower(PASS), 'no'))
	    PARAM = char(varargin(i));
	    switch lower(PARAM)
		  % Параметры с аргументами
		    % Шаблон для параметра с аргументом
	          case 'SomeArgs'
		        if(i < N_ARGS)
			      PASS = 'yes';
			      % Действия
			    end
		  % Параметры без аргументов
		    % Смена режима компиляции
			  case 'test'
                CompileMode = 'Test';
			  case 'DOSout'
			    DOSoutMode = 'DOSout';
	    end
	  else
	    PASS = 'no';
	  end
	end
% Установка параметров DOS
  switch (lower(DOSoutMode))
    case 'dosout'
	  DOSPARAM = '&';
	case 'matlabout'
	  DOSPARAM = '';
  end
% Запуск компиляции LaTeX-файла (32 - пробел)
  % Если режим тестовый, то делаем один проход, иначе 3
    switch (lower(CompileMode))
	  case 'test'
       dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	  case 'full'
       dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	   dos(strcat('bibtex8.exe --huge --csfile "cp1251.csf"', 32, Name, 32, DOSPARAM));
	   dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	   dos(strcat('pdflatex', 32, Name, 32, DOSPARAM));
	end
% Запуск просмотрщика
  dos(strcat('start "C:\Program Files\Foxit Software\Foxit Reader\Foxit Reader.exe"', 32, Name,'.pdf'));
