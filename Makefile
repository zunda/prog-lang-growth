.PHONY: default
default: growth.png
growth.png: growth.plot *.dat
	gnuplot growth.plot
