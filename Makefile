.PHONY: default
default: growth.png
growth.png: growth.plot dat/*.dat
	gnuplot growth.plot
