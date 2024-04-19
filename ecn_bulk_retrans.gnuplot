set y2tics
	set terminal pngcairo noenhanced size 1024,768 
set output 'graphs//ecn_bulk_1G_1ms_retrans_varynumflows.png'
	set key top left
	set grid
        set logscale x
	set title  'dctcp, bbr1, and bbr retransmit rate'
        set xlabel 'number of flows'
        set ylabel 'retransmit rate (percent)'
	set yrange [:]
        set xrange [1:100]
	plot 'graphs//ecn_bulk.retrans.dctcp'       u 1:2 t 'dctcp' axis x1y1 w lp lw 2 pt 7 lt rgb "#d7191c",	     'graphs//ecn_bulk.retrans.bbr1'         u 1:2 t 'bbr1'   axis x1y1 w lp lw 2 pt 7 lt rgb "#abd9e9",	     'graphs//ecn_bulk.retrans.bbr'  u 1:2 t 'bbr'  axis x1y1 w lp lw 2 pt 7 lt rgb "#2c7bb6"             

