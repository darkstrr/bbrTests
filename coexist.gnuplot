set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//coexist_1xcubic_1xbbr_50M_30ms_varybuf.png'
	set key top left
	set ytics nomirror
	set grid
	set title  'cubic vs BBR throughput'
        set xlabel 'buffer size (as a multiple of BDP)'
        set ylabel 'throughput in Mbit/sec'
	set yrange [0:50]
	plot 'graphs//coexist.cubic:1,bbr1:1'  u 1:2 t 'bbr1'  w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//coexist.cubic:1,bbr:1' u 1:2 t 'bbr' w lp lw 2 pt 7 lt rgb "#2c7bb6"             

