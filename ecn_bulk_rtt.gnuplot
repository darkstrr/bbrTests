set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//ecn_bulk_1G_1ms_rtt_varynumflows.png'
	set key top left
	set ytics nomirror
	set grid
        set logscale x
	set title  'dctcp, bbr1, and bbr median RTT'
        set xlabel 'number of flows'
        set ylabel 'median srtt sample (ms)'
	set yrange [0:]
        set xrange [1:100]
	plot 'graphs//ecn_bulk.dctcp'       u 1:2 t 'dctcp'           w lp lw 2 pt 7 lt rgb "#d7191c",	     'graphs//ecn_bulk.bbr1'         u 1:2 t 'bbr1'             w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//ecn_bulk.bbr'  u 1:2 t 'bbr' w lp lw 2 pt 7 lt rgb "#2c7bb6"             

