set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//shallow_buf_1G_100ms_varynumflows.png'
	set key top left
	set ytics nomirror
	set grid
        set logscale x
	set title  'cubic, bbr1, and bbr retransmit rate in shallow buffers'
        set xlabel 'number of flows'
        set ylabel 'retransmit rate (percent)'
	set yrange [0:15]
        set xrange [:]
	plot 'graphs//shallow_buf.cubic' u 1:2 t 'cubic' w lp lw 2 pt 7 lt rgb "#d7191c",	     'graphs//shallow_buf.bbr1'   u 1:2 t 'bbr1' w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//shallow_buf.bbr'  u 1:2 t 'bbr'  w lp lw 2 pt 7 lt rgb "#2c7bb6"             

