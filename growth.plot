reset
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y"
set xlabel "Year"
set xrange ["1980-01-01":*]
set style data linespoints
set log y
plot "ansi-c.dat" using 1:2 tit "ANSI C",\
     "iso-cpp.dat" using 1:2 tit "ISO C++",\
     "ruby.dat" using 1:2 tit "Ruby",\
     "tex.dat" using 1:2 tit "TeX"
set term push
set term png small
set output "growth.png"
replot
unset output
set term pop
