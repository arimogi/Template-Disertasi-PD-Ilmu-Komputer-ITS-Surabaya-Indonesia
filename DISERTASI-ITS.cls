%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% File `DISERTASI-ITS.cls' ini ditujukan untuk menulis laporan
%%% Tugas Akhir (Disertasi) menggunakan LaTeX untuk program Doctoral
%%% di Institut Teknologi Sepuluh Nopember, Surabaya.
%%%
%%% file ini hasil penyesuaian dari file TA-ITS.cls yang disusun oleh <yunusm@matematika.its.ac.id>
%%% Komentar, saran, koreksi, modifikasi untuk file ini dipersilakan. 
%%% dimodifikasi oleh <tri.utomo@ma.itera.ac.id>
%%% disesuaikan untuk Program Doktor Ilmu Komputer oleh Ari Mogi
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{DISERTASI-ITS}[2025/04/01 v1.5]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,12pt,twoside,openright,final]{book}
\RequirePackage[hmargin={4.cm,3.cm},vmargin={3.5cm,3.cm}]{geometry}
\RequirePackage{amssymb,amsmath,amsthm,amsfonts,indentfirst,enumerate,
                tabularx,ifthen,setspace,color,fancyhdr}
%\settowidth{\parindent}{~~~~~~~} mengatur indentation awal paragraf sebanyak ~ spasi (package indentfirst). standarnya 5-7 spasi, default dari indenfirst adalah 5 spasi.
%\RequirePackage{url,nohyperref}
\RequirePackage{hyperref} 		% mengatur agar daftar referensi (daftar isi dll serta cross reference menjadi linkable)
\hypersetup{
         	colorlinks=true, 		% set true if you want colored links
         	linktoc=all,     		% set to all if you want both sections and subsections linked
         	linkcolor=black,  		% choose some color if you want links to stand out
         	filecolor=black,urlcolor=black,citecolor=black,
         	pdftitle={Disertasi PDIK ITS Surabaya},
         	pdfauthor={PDIK-ITS},
}
\RequirePackage{longtable,multirow}
%\RequirePackage{textcomp,algorithmic}
\RequirePackage{graphicx, wrapfig, lscape, rotating, epstopdf}
\RequirePackage{tikz}
\RequirePackage[table]{xcolor}

\lhead{}\chead{}\rhead{}
\lfoot{}\cfoot{\thepage}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
%
\newcommand{\@judul}{Judul Disertasi}
\DeclareRobustCommand{\Judul}[1]{%
    \renewcommand{\@judul}{#1}%
}
\newcommand{\@juduleng}{Title of Disertation}
\DeclareRobustCommand{\JudulEng}[1]{%
    \renewcommand{\@juduleng}{#1}%
}
\newcommand{\@nama}{Nama Mahasiswa}
\DeclareRobustCommand{\Nama}[1]{%
   \renewcommand{\@nama}{#1}%
}
\newcommand{\@NRP}{70xxxxxxxx}
\DeclareRobustCommand{\NRP}[1]{%
   \renewcommand{\@NRP}{#1}
}
\newcommand\@jur{Informatika}
\DeclareRobustCommand\Jurusan[1]{%
   \renewcommand\@jur{#1}
}
\newcommand\@dept{Informatics}
\DeclareRobustCommand\Department[1]{%
   \renewcommand\@dept{#1}
}
\newcommand\@bidstudi{Data Analysis}
\DeclareRobustCommand\BidangStudi[1]{%
   \renewcommand\@bidstudi{#1}
}
\newcommand\@thn{2025}
\DeclareRobustCommand\Tahun[1]{%
   \renewcommand\@thn{#1}
}

\newcommand\@faks{Science and Analytical Data}
\DeclareRobustCommand\Fakultas[1]{%
   \renewcommand\@faks{#1}
}
\newcommand\@fac{Science and Analytical Data}
\DeclareRobustCommand\Faculty[1]{%
   \renewcommand\@fac{#1}
}

\newcommand\@kadep{Nama Kepala Departemen} 			%  Kepala Departemen Program Studi
\DeclareRobustCommand\KepalaDep[1]{%
	\renewcommand\@kadep{#1}
}
\newcommand\@nipkadep{12345678 123456 1 123} 			% NIP Kepala Departemen Program Studi
\DeclareRobustCommand\NipKepalaDep[1]{%
	\renewcommand\@nipkadep{#1}
}
	
\newcommand\@pbbsatu{Nama Pembimbing 1}
\newcommand\@pbbdua{Nama Pembimbing 2}
\newcommand\@pbbtiga{Nama Pembimbing 3}
\DeclareRobustCommand\Pembimbing[3]{%
   \renewcommand{\@pbbsatu}{#1}%
   \renewcommand{\@pbbdua}{#2}%
   \renewcommand{\@pbbtiga}{#3}%
}
\newcommand\@NIPpbbsatu{12345678 123456 1 123}
\newcommand\@NIPpbbdua{12345678 123456 1 123}
\newcommand\@NIPpbbtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPembimbing[3]{%
   \renewcommand{\@NIPpbbsatu}{#1}%
   \renewcommand{\@NIPpbbdua}{#2}%
   \renewcommand{\@NIPpbbtiga}{#3}%
}
\newcommand\@pujsatu{Nama Penguji Pertama}
\newcommand\@pujdua{Nama Penguji Ke-dua}
\newcommand\@pujtiga{}
\DeclareRobustCommand\Penguji[3]{%
   \renewcommand{\@pujsatu}{#1}%
   \renewcommand{\@pujdua}{#2}%
   \renewcommand{\@pujtiga}{#3}%
}
\newcommand\@NIPpujsatu{12345678 123456 1 123}
\newcommand\@NIPpujdua{12345678 123456 1 123}
\newcommand\@NIPpujtiga{12345678 123456 1 123}
\DeclareRobustCommand\NIPPenguji[3]{%
   \renewcommand{\@NIPpujsatu}{#1}%
   \renewcommand{\@NIPpujdua}{#2}%
   \renewcommand{\@NIPpujtiga}{#3}%
}
\newcommand\@tglsetuju{12 Desember 2024}
\DeclareRobustCommand\TanggalDisetujui[1]{%
   \renewcommand\@tglsetuju{#1}
}
\newcommand\@tglseminar{04 Januari 2024}
\DeclareRobustCommand\TanggalSeminar[1]{%
   \renewcommand\@tglseminar{#1}
}
\newcommand\@tmptseminar{Ruang U}
\DeclareRobustCommand\TempatSeminar[1]{%
   \renewcommand\@tmptseminar{#1}
}
\newcommand\@hariseminar{Rabu}
\DeclareRobustCommand\HariSeminar[1]{%
   \renewcommand\@hariseminar{#1}
}
\newcommand\@tglujian{04 Januari 2024}
\DeclareRobustCommand\TanggalUjian[1]{%
   \renewcommand\@tglujian{#1}
}
\newcommand\@periodewisuda{I}
\DeclareRobustCommand\PeriodeWisuda[1]{%
   \renewcommand\@periodewisuda{#1}
}

\newcommand\@keterangan{ }
\DeclareRobustCommand\Keterangan[1]{%
   \renewcommand\@keterangan{#1}
}
\newcommand\BagianAwal{%
    \frontmatter
    \@twosidefalse
    \pagestyle{plain}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\LembarJudul{%
    \cleardoublepage\thispagestyle{empty}
    \enlargethispage{.7cm}

    % Draw background on the top half of the page
    \definecolor{listBGcolor}{RGB}{0, 112, 192}
    \definecolor{blockBGcolor}{RGB}{255, 214, 0}    

    \begin{flushleft}
    \sffamily    
    \includegraphics[width=3.5cm]{logoITS}
    
    \begin{tikzpicture}[remember picture, overlay]
      %\fill[listBGcolor] (current page.north west) rectangle ([yshift=-0.1\paperheight]current page.north east);
      \fill[listBGcolor]
            ([yshift=-10cm]current page.north west) % slight top margin
            rectangle 
            ([yshift=-9cm]current page.north east); % 2cm height

        % Bottom rectangle: from bottom of toprect to bottom of page
        \fill[blockBGcolor]
            ([yshift=-10cm]current page.north west)
            rectangle (current page.south east);
    \end{tikzpicture}
    
    \vfill\noindent{%
    \phantomsection
    \addcontentsline{toc}{chapter}{HALAMAN JUDUL} 
    \ifthenelse{\equal{\@keterangan}{}\OR\equal{\@keterangan}{ }}
        {DISERTASI}
        {PROPOSAL DISERTASI}
    \\[9ex]
    {\large\textbf{\MakeUppercase{\@judul}}} 		\\ [7ex]
    {\MakeUppercase{\@nama}\\NRP \@NRP}    		\\[7ex]
    PROMOTOR:									\\
    {\@pbbsatu}									\\[2ex]
    \ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
    {}
    {
    CO - PROMOTOR:								\\
    {\@pbbdua\mbox{}}							\\ 
    {\@pbbtiga\mbox{}}
    }\\[7ex]
    PROGRAM DOKTORAL							\\
    DEPARTEMEN~\MakeUppercase{\@jur}			\\
    FAKULTAS~\MakeUppercase{\@faks}				\\
    INSTITUT TEKNOLOGI SEPULUH NOPEMBER			\\
    SURABAYA~									\\
    \@thn}
    \end{flushleft}
}

\newcommand\TitlePage{%
    \cleardoublepage\thispagestyle{empty}
    \enlargethispage{.7cm}
    \begin{flushleft}
    \sffamily
    \includegraphics[width=3.5cm]{logoITS}
    
    \begin{tikzpicture}[remember picture, overlay]
      %\fill[listBGcolor] (current page.north west) rectangle ([yshift=-0.1\paperheight]current page.north east);
      \fill[listBGcolor]
            ([yshift=-10cm]current page.north west) % slight top margin
            rectangle 
            ([yshift=-9cm]current page.north east); % 2cm height

        % Bottom rectangle: from bottom of toprect to bottom of page
        \fill[blockBGcolor]
            ([yshift=-10cm]current page.north west)
            rectangle (current page.south east);
    \end{tikzpicture}
    
    \vfill\noindent{
%    PROPOSAL OF DISERTATION\\[9ex]
 \ifthenelse{\equal{\@keterangan}{}\OR\equal{\@keterangan}{ }}
	{DISERTATION}
	{PROPOSAL OF DISERTATION} 
 \\[9ex]
   {\large\textbf{\MakeUppercase{\@juduleng}}}\\[7ex]
%    {\large\textbf{\MakeUppercase{\@juduleng}}}\\[3ex]
    \MakeUppercase{\@nama}\\NRP \@NRP\\[7ex]
    PROMOTOR:\\
    \@pbbsatu\\[2ex]
    \ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
    {}
    {
    CO - PROMOTOR:\\
    \@pbbdua\mbox{}\\ \@pbbtiga\mbox{}
    }\\[7ex]
    DOCTORAL PROGRAM\\
    DEPARTMENT OF~\MakeUppercase{\@dept}\\
    FACULTY OF~\MakeUppercase{\@fac}\\
    INSTITUT TEKNOLOGI SEPULUH NOPEMBER\\
    SURABAYA~\\
    \@thn}
    \end{flushleft}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\LembarPersetujuan{%
    \cleardoublepage
   	\phantomsection
   	\addcontentsline{toc}{chapter}{LEMBAR PERSETUJUAN}
    \enlargethispage{1.5cm}
    \setcounter{page}{1}
    \thispagestyle{plain}
    \begin{center}
	    \large\bfseries
	    LEMBAR PERSETUJUAN\\[7ex]
%	    \vfill
		\normalfont\normalsize
	    Yang bertanda tangan di bawah ini:\\
	    \begin{tabular}{lcl}
	    	\ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
	    	{\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
	    		{Nama &:& \@pbbsatu\\}
	    		{Nama &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
	    	}
	    	{Nama &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
	    \end{tabular}
    	\\[3ex]
	    Menyatakan bahwa Proposal Disertasi yang berjudul: \\ [5ex]
	    {\large\textbf{\MakeUppercase{\@judul}}}\\[5ex]
%	    \vfill
		{\large\textbf{\MakeUppercase{\@juduleng}}}\\[5ex]

	    \vspace*{3ex}
	    Oleh:\\
	    \MakeUppercase{\@nama}\\
	    NRP.~ \@NRP\\ %[7ex]
	    \vfill
	    telah siap untuk diseminarkan\\ %[7ex]
	    \vfill
		Surabaya, \@tglsetuju \\ %[10ex]
		\vfill
	    \begin{tabularx}{\textwidth}{@{}lXc@{}}
	    \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{}}
	          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{}}
	              	{\@pbbsatu & & .............................\\
		               NIP~\@NIPpbbsatu&& Pembimbing I\\[4ex]}
					{\@pbbsatu & & .............................\\
		               NIP~\@NIPpbbsatu & & Pembimbing I\\[7ex]
		               \@pbbdua & & .............................\\
		               NIP~\@NIPpbbdua & & Pembimbing II\\[4ex]}
	          }
	          {\@pbbsatu & & .............................\\
	            NIP~\@NIPpbbsatu & & Pembimbing I\\[7ex]
	            \@pbbdua & & .............................\\
	            NIP~\@NIPpbbdua && Pembimbing II \\[7ex]
	            \@pbbtiga & & .............................\\
	            NIP~\@NIPpbbtiga & & Pembimbing III \\[4ex]
	          }
	    \end{tabularx}\\[3ex]
%	    Surabaya, \@tglsetuju
    \end{center}
%	\\[30ex]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% lembar pengesahan tipe panduan
\newcommand\LembarPengesahan{%
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{LEMBAR PENGESAHAN PROPOSAL DISERTASI}
	\enlargethispage{1.5cm}
	\setcounter{page}{1}
	\thispagestyle{plain}
	\begin{center}
		\large\bfseries
		LEMBAR PENGESAHAN\\PROPOSAL DISERTASI \\ [7ex]
		%	    \vfill
		\normalfont\normalsize
		
		\begin{tabular}{p{5em} p{0em} p{25em}}%{p{0.14\linewidth} p{0.001\linewidth} p{.77\linewidth}}
			Judul 		&:& \@judul \\
			Mahasiswa 	&:& \@nama \\
			NRP 		&:& \@NRP \\ [5ex]
		\end{tabular}
		
%		\vfill
		\bfseries
		Telah diseminarkan pada: \\ [4ex]
%		\vfill
		\normalfont\normalsize
		\begin{tabular}{p{5em} p{0em} p{25em}}%{p{0.14\linewidth} p{0.001\linewidth} p{.77\linewidth}}%{p{0.15\linewidth} p{0.01\linewidth} p{.7\linewidth}}
			Hari 		&:& \@hariseminar \\
			Tanggal 	&:& \@tglseminar \\
			Tempat 		&:& \@tmptseminar\\ [5ex]
                % Tempat 		&:& Ruang Sidang II Departemen Matematika, Gedung U \\ & & Lantai 2\\ [5ex]
		\end{tabular}
%		\vfill
		%	
		%%	ini belum dicoba, sepertinya bisa beerhasil dengan cara ini
		%%	\begin{flushright}
			%%		\begin{tabular}{l@{}c@{ : }l@{}} %{lcl}
				%%			Tanggal Seminar & & {\@tglsetuju}\\	
				%%			% Periode Wisuda & & {\@tglperiode}
				%%		\end{tabular}
			%%		\vspace*{2ex}
			%%	\end{flushright}
		%		
		%		\vfill
		Mengetahui/ menyetujui: \\[5ex]
%		\vfill
		\begin{tabularx}{\textwidth}{c@{}Xc@{}}
			\multicolumn{1}{c}{Dosen Penguji:}  &&\multicolumn{1}{c}{Calon Dosen Pembimbing:} \\ [15ex]
			
			\begin{tabular}{ll}
				\ifthenelse{\equal{\@pujtiga}{}\OR\equal{\@pujtiga}{ }}
					{\ifthenelse{\equal{\@pujdua}{}\OR\equal{\@pujdua}{ }}
						{1. & \@pujsatu \\
							& NIP~\@NIPpujsatu}
						{1. & \@pujsatu \\
							& NIP~\@NIPpujsatu \\ [13ex]
						 2. & \@pujdua \\
							& NIP~\@NIPpujdua}
					}
					{
						1. 	& \@pujsatu \\
							& NIP~\@NIPpujsatu \\ [13ex]
						2. 	& \@pujdua \\
							& NIP~\@NIPpujdua \\ [13ex]
						3. 	& \@pujtiga \\
							& NIP~\@NIPpujtiga \\ %[13ex]
					}			
			\end{tabular}
			& &
			\begin{tabular}{ll}
				\ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
					{\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
						{1.& \@pbbsatu \\
						& NIP~\@NIPpbbsatu\\[13ex]\\\\[13ex]\\\\}
						{1. & \@pbbsatu \\
							& NIP~\@NIPpbbsatu \\[13ex]
						2. 	& \@pbbdua \\
							& NIP~\@NIPpbbdua\\[13ex]\\\\}		
						}
					{ 
						1. 	& \@pbbsatu \\
							& NIP~\@NIPpbbsatu \\[13ex]
						2. 	& \@pbbdua \\
							& NIP~\@NIPpbbdua \\[13ex]
						3. 	& \@pbbtiga \\
							& NIP~\@NIPpbbtiga 
					}
			\end{tabular} 
			
		\end{tabularx}
	\end{center}
	%	\\[30ex]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\LembarPengesahanDisertasi{%
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{LEMBAR PENGESAHAN DISERTASI}
	\enlargethispage{1cm}
	\setcounter{page}{1}
	\thispagestyle{plain}
	\begin{center}
		\large\bfseries\sffamily
		LEMBAR PENGESAHAN DISERTASI 											\\[3ex]
		%	    \vfill
		\normalsize\normalfont
		\sffamily
		Tesis disusun untuk memenuhi salah satu syarat memperoleh gelar 		\\ 
		\textbf{Doktor (Dr)}													\\
		di																		\\
		\textbf{Institut Teknologi Sepuluh Nopember} 							\\
		Oleh: 																	\\
		\textbf{\MakeUppercase{\@nama}} 										\\
		\textbf{\@NRP} 															\\[2ex]
		
		Tanggal Ujian: \@tglujian  														\\
		Periode Wisuda: \@periodewisuda 														\\[2ex]
  %\vfill
		
		Disetujui oleh:															\\
		\textbf{Pembimbing:}  													%\\[4ex]
        \vfill
		\begin{tabularx}{\textwidth}{@{}lXc@{}}
			\ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
			{\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
				{\@pbbsatu & & .............................\\
					NIP~\@NIPpbbsatu&& Pembimbing I \\[4ex]}
				{\@pbbsatu & & .............................\\
					NIP~\@NIPpbbsatu & & Pembimbing I\\[7ex]
					\@pbbdua & & .............................\\
					NIP~\@NIPpbbdua & & Pembimbing II\\%[4ex]
				}
			}
			{ \@pbbsatu & & .............................\\
				NIP~\@NIPpbbsatu & & Pembimbing I\\[7ex]
				\@pbbdua & & .............................\\
				NIP~\@NIPpbbdua && Pembimbing II \\[7ex]
				\@pbbtiga & & .............................\\
				NIP~\@NIPpbbtiga & & Pembimbing III 	 %						\\[4ex]						
			}
		\end{tabularx}
		\vfill
		\textbf{Penguji:} 														%\\[4ex]
        \vfill
		\begin{tabularx}{\textwidth}{@{}lXc@{}}
			\ifthenelse{\equal{\@pujtiga}{}\OR\equal{\@pujtiga}{ }}
			{\ifthenelse{\equal{\@pujdua}{}\OR\equal{\@pujdua}{ }}
				{\@pujsatu & & .............................\\
					NIP~\@NIPpujsatu && Penguji I}
				{\@pujsatu & & .............................\\
					NIP~\@NIPpujsatu & & Penguji I\\[7ex]
					\@pujdua && .............................\\
					NIP~\@NIPpujdua & & Penguji II}
			}
			{ \@pujsatu && .............................\\
				NIP~\@NIPpujsatu & & Penguji I\\[7ex]
				\@pujdua && .............................\\
				NIP~\@NIPpujdua && Penguji II \\[7ex]
				\@pujtiga && .............................\\
				NIP~\@NIPpujtiga && Penguji III
			}
		\end{tabularx}
		\vfill
	
		Kepala Departemen~{\@jur}  \\
		Fakultas~{\@faks}	 \\[10ex]
		
		\underline{\@kadep} \\
		NIP~\@nipkadep
	\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\katakunci}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textit{\textbf{Kata kunci:}}&\textit{#1}
    \end{tabularx}
}
\newcommand{\keywords}[1]{%
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        \textit{\textbf{Key-words:}}&\textit{#1}
    \end{tabularx}
}
\newenvironment*{Abstrak}{%-------------------------------
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{ABSTRAK}
\begin{center}%
{\bfseries{\MakeUppercase{\@judul}}}
\par \vskip 2ex%
\par%
\begin{tabular}{lcl}
Nama Mahasiswa &:& \@nama\\
NRP &:& \@NRP\\
%Jurusan &:& \@jur\space F\@faks-ITS\\
\ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
{\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
{Pembimbing &:& \@pbbsatu\\}
{Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
}
{Pembimbing &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\&& 3.~ \@pbbtiga}
\end{tabular}
\end{center}%
\centerline{\large\bfseries ABSTRAK}
\par \vskip 2ex%
\par%

%\textbf{Abstrak}
%\itshape
\par}{\normalfont\normalsize
}
\newenvironment*{Abstract}{%-------------------------------
  	\cleardoublepage
  	\phantomsection
	\addcontentsline{toc}{chapter}{ABSTRACT}
  	\begin{center}%
    {\bfseries{\MakeUppercase{\@juduleng}}} %\large\MakeUppercase
    \par \vskip 2ex%
    \par%
    \begin{tabular}{lcl}
        Name &:& \@nama\\
        NIM &:& \@NRP\\
        %Department &:& \@dept\space F\@faks-ITS\\
        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
              {Supervisor &:& \@pbbsatu\\}
              {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
          }
          {Promotor&:&  \@pbbsatu\\
           Co-Promotor&:& 1.~ \@pbbdua\\&& 2.~ \@pbbtiga}
    \end{tabular}
  \end{center}%
  \centerline{\large\bfseries ABSTRACT}
  \par \vskip 2ex%
  \par%

  %\textbf{Abstract}
%  \itshape
  \par}{\normalfont\normalsize
}
\newenvironment*{Intisari}{%-------------------------------
  	\cleardoublepage
    \phantomsection
  	\addcontentsline{toc}{chapter}{RINGKASAN}
  	\begin{center}%
    {\bfseries{{\@judul}}}%\large\MakeUppercase
    \par \vskip 2ex%
    \par%
    %\begin{tabular}{lcl}
%        Nama &:& \@nama\\
%        NIM &:& \@NRP\\
%        %Department &:& \@dept\space F\@faks-ITS\\
%        \ifthenelse{\equal{\@pbbtiga}{}\OR\equal{\@pbbtiga}{ }}
%          {\ifthenelse{\equal{\@pbbdua}{}\OR\equal{\@pbbdua}{ }}
%              {Supervisor &:& \@pbbsatu\\}
%              {Supervisors &:& 1.~ \@pbbsatu\\&& 2.~ \@pbbdua\\}
%          }
%          {Promotor&:& \@pbbsatu\\
%           Ko-Promotor&:& 1.~ \@pbbdua\\
%           && 2.~ \@pbbtiga}
%    \end{tabular}
  \end{center}%
  \centerline{\large\bfseries RINGKASAN}

  %\textbf{Intisari}
  \itshape
  \par}{\normalfont\normalsize
}

\newcommand{\KataPengantar}{%-----------------
    \cleardoublepage
    \centerline{\large\bfseries KATA PENGANTAR}
   	\phantomsection
    \addcontentsline{toc}{chapter}{KATA PENGANTAR}
    \vspace*{40pt}
}
\newcommand{\UcapanTerimaKasih}{%-----------------
    \cleardoublepage
    \centerline{\large\bfseries UCAPAN TERIMAKASIH}
  	\phantomsection
    \addcontentsline{toc}{chapter}{UCAPAN TERIMAKASIH}
    \vspace*{40pt}
}
\newcommand{\DaftarIsi}{%---------------------
\cleardoublepage
\pagestyle{plain}
\renewcommand\harvardand{dan}
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR ISI}
\tableofcontents
}
\newcommand{\DaftarGambar}{%----------------------
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
\listoffigures 
}
\newcommand{\DaftarNotasi}{%----------------------
\renewcommand{\nomname}{DAFTAR NOTASI}
\cleardoublepage
\vspace*{2ex}
\centerline{\large\bfseries DAFTAR NOTASI}
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR NOTASI}
}
\newcommand{\DaftarTabel}{%----------------------
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{DAFTAR TABEL}
\listoftables
}
\newcommand\BagianInti{%--------------------
\cleardoublepage
\mainmatter
\@twosidetrue
\onehalfspacing

%\pagestyle{myheadings}
}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
\thispagestyle{plain}%
\global\@topnum\z@
\@afterindentfalse
\secdef\@chapter\@schapter}
\gdef\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\refstepcounter{chapter}%
\typeout{\@chapapp\space\thechapter.}%
\addcontentsline{toc}{chapter}%
{\protect\numberline{\@chapapp\space\thechapter}#1}%
\else
\addcontentsline{toc}{chapter}{\@chapapp\space#1}%
\fi
\else
\addcontentsline{toc}{chapter}{#1}%
\fi
\chaptermark{#1}%
\addtocontents{lof}{\protect\addvspace{10\p@}}%
\addtocontents{lot}{\protect\addvspace{10\p@}}%
\if@twocolumn
\@topnewpage[\@makechapterhead{#2}]%
\else
\@makechapterhead{#2}%
\@afterheading
\fi}
\gdef\@makechapterhead#1{%
%\vspace*{5\p@}%
{\parindent \z@ \centering\normalfont
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\large\bfseries \MakeUppercase\@chapapp\space \thechapter
\par
\fi
\fi
\large\bfseries\MakeUppercase{#1}\par\nobreak
\vskip 40\p@
}}
\gdef\@schapter#1{\@makeschapterhead{#1}%
\@afterheading
}
\gdef\@makeschapterhead#1{%
%\vspace*{5\p@}%
{\parindent \z@ \centering
\normalfont
\interlinepenalty\@M
\large\bfseries\MakeUppercase{#1}\par\nobreak
\vskip 40\p@
}}
\renewcommand\section{\@startsection {section}{1}{\z@}%
{-1.5ex \@plus -1ex \@minus -.2ex}%
{.01ex \@plus.2ex}%
{\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
{-1.5ex\@plus -1ex \@minus -.2ex}%
{.01ex \@plus .2ex}%
{\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{2}{\z@}%
{-.25ex\@plus -1ex \@minus -.2ex}%
{.01ex \@plus.2ex}%
{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
{.25ex \@plus1ex \@minus.2ex}%
{-1.5em}%
{\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@arabic\c@chapter}
\renewcommand*\thesection{\@arabic\c@chapter.\@arabic\c@section}
%%%-------------setting daftar isi/tabel/gambar------------------
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{%
\ifnum \c@tocdepth >\m@ne
\addpenalty{-\@highpenalty}%
\vskip 0.5em \@plus\p@
\setlength\@tempdima{5em}%
\begingroup
\parindent \z@ \rightskip \@pnumwidth
\parfillskip -\@pnumwidth
\leavevmode %\bfseries
\advance\leftskip\@tempdima
\hskip -\leftskip
#1\nobreak\hfil \nobreak
\hb@xt@\@pnumwidth{\hss #2}
\par
\penalty\@highpenalty
\endgroup
\fi}
\renewcommand*\l@section{\@dottedtocline{1}{2.8em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{2.75em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}
%\renewcommand*\nomname{\@dottedtocline{1}{1.5em}{5em}}
%%%%%%------------------------
\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand \thefigure
{\ifnum\c@chapter>\z@\figurename\space\@arabic\c@chapter.\fi \@arabic\c@figure}
\def\fnum@figure{\nobreakspace\thefigure}
\renewcommand \thetable
{\ifnum\c@chapter>\z@\tablename\space\@arabic\c@chapter.\fi \@arabic\c@table}
\def\fnum@table{\nobreakspace\thetable}
%\renewcommand \thenomenclature
%{\ifnum \c@chapter>\z@ \tablename\space \@arabic\c@chapter.\fi \@arabic\c@table}
%\def\fnum@table{\nobreakspace\thenomenclature}
%%%%---------------------------------
%%%%---------------------------------

%% untuk bibliografi, sesuaikan di sini
\RequirePackage{itsbib}
\citationstyle{itsbib}
\newcommand\DaftarPustaka[1]{%
    \cleardoublepage
    \phantomsection
	\addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
    \bibliographystyle{itsbib}%hHarvard%ams%
    \bibliography{#1}
}
%%%%---------------------------------
\newcommand\BukaLampiran{%
    \cleardoublepage
  	\setcounter{chapter}{0}%
  	\setcounter{section}{0}%
  	\gdef\@chapapp{\appendixname}%
  	\gdef\thechapter{\@Alph\c@chapter}
  	\addtocontents{toc}{\protect\addvspace{1ex}}%
	\phantomsection
  	\addcontentsline{toc}{chapter}{DAFTAR LAMPIRAN}
  	\mbox{}\\\vfill
  	{\Huge \hfill{LAMPIRAN}}\\
  	\vfill\mbox{}\\
  	\thispagestyle{empty}
}
%-----------------------------------
\newcommand\lampiran[1]{%
    \refstepcounter{chapter}
    \cleardoublepage
    \thispagestyle{plain}
    \addcontentsline{toc}{chapter}{\thechapter~~ #1}
    \null
    \begin{center}
    \large\bfseries
    \MakeUppercase\appendixname\space\thechapter
    \par#1
    \end{center}
    \vskip 20\p@\par
}
%-----------------------------------
%
%  Tambahan untuk mengisi gambar.
%
%-----------------------------------
\RequirePackage{picins}
\newcommand\biodata[1]{%-----------
  \newsavebox{\foto}
  \savebox{\foto}[3cm][b]{\includegraphics[width=4cm,height=6cm]{#1}}
  \parpic(4.25cm,6.25cm){\usebox\foto}
}

%%%------------- PENYESUAIAN ISTILAH ---------------------------
\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
\renewcommand\bibname{DAFTAR PUSTAKA}
\renewcommand\indexname{INDEKS}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
\renewcommand\appendixname{Lampiran}

\lefthyphenmin=5
\righthyphenmin=5
\sloppy
\pagestyle{myheadings}

%% ======================================================
%% end of file `TA-ITS.cls'.
%% modified: 2025/04/24
%% ======================================================
