set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//bufferbloat_50M_30ms_varybuf.png'
	set key top left
	set ytics nomirror
	set grid
	set title  'cubic, bbr1, and bbr median RTT'
        set xlabel 'buffer size (as a multiple of BDP)'
        set ylabel 'median srtt sample (ms)'
	set yrange [0:]
        set xrange [1:100]
	plot 'graphs//bufferbloat.cubic' u 1:2 t 'cubic' w lp lw 2 pt 7 lt rgb "#d7191c",	     'graphs//bufferbloat.bbr1'   u 1:2 t 'bbr1' w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//bufferbloat.bbr'  u 1:2 t 'bbr'  w lp lw 2 pt 7 lt rgb "#2c7bb6"             

