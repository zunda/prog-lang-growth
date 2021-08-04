reset
set term push
set term pngcairo font "Arial,9" lw 1.5
set output "growth.png"
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y"
set xlabel "Year"
set xrange ["1980-01-01":*]
set yrange [0.5:3000]
set style data lines
set key top left
set log y
cd "dat"
plot "ansi-c.dat" using 1:2 tit "ANSI C",\
     "iso-cpp.dat" using 1:2 tit "ISO C++",\
     "ecmascript.dat" using 1:2 tit "ECMAScript",\
     "go.dat" using 1:2 tit "Go",\
     "perl.dat" using 1:2 tit "Perl",\
     "php.dat" using 1:2 tit "PHP",\
     "python.dat" using 1:2 tit "Python",\
     "ruby.dat" using 1:2 tit "Ruby",\
     "tex.dat" using 1:2 tit "TeX"
unset output
set term pop
