set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//random_loss_1G_100ms_varyloss.png'
	set key top right
	set ytics nomirror
	set grid
        set logscale x
	set title  'cubic, bbr1, and bbr throughput with random loss'
        set xlabel 'random loss rate, in percent'
        set ylabel 'throughput in Mbit/sec'
	set yrange [0:1000]
        set xrange [:20]
	plot 'graphs//random_loss.cubic:1' u 1:2 t 'cubic' w lp lw 2 pt 7 lt rgb "#d7191c",	     'graphs//random_loss.bbr1:1'   u 1:2 t 'bbr1' w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//random_loss.bbr:1'  u 1:2 t 'bbr'  w lp lw 2 pt 7 lt rgb "#2c7bb6"             

