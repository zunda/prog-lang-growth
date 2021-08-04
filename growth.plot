reset
set term push
set term png small
set output "growth.png"
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y"
set xlabel "Year"
set xrange ["1980-01-01":*]
set yrange [0.8:120]
set style data linespoints
set log y
cd "dat"
plot "ansi-c.dat" using 1:2 tit "ANSI C",\
     "iso-cpp.dat" using 1:2 tit "ISO C++",\
     "go.dat" using 1:2 tit "Go",\
     "python.dat" using 1:2 tit "Python",\
     "ruby.dat" using 1:2 tit "Ruby",\
     "tex.dat" using 1:2 tit "TeX"
unset output
set term pop
