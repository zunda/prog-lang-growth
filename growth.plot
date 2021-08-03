reset
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y"
set xlabel "Year"
set xrange ["1980-01-01":*]
set style data linespoints
set log y
plot "tex.dat" using 1:2 tit "TeX"
