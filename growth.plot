reset
set term push
set term pngcairo font "Noto Sans,9" lw 1.5
set output "growth.png"
set xdata time
set timefmt "%Y-%m-%d"
set format x "%Y"
set xlabel "Year"
set xrange ["1979-01-01":"2022-01-01"]
set yrange [0.08:3000]
set style data lines
set key top left
set log y
cd "dat"
set label 1 "CC0 github.com/zunda/prog-lang-growth" at graph 1,graph 1 right offset 0,0.5
plot "ansi-c.dat" using 1:2 tit "ANSI C",\
     "iso-cpp.dat" using 1:2 tit "ISO C++",\
     "ecmascript.dat" using 1:2 tit "ECMAScript",\
     "go.dat" using 1:2 tit "Go",\
     "perl.dat" using 1:2 tit "Perl",\
     "php.dat" using 1:2 tit "PHP",\
     "python.dat" using 1:2 tit "Python",\
     "ruby.dat" using 1:2 tit "Ruby",\
     "rust.dat" using 1:2 tit "Rust",\
     "tex.dat" using 1:2 tit "TeX"
unset output
set term pop
