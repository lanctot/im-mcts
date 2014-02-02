set terminal postscript eps enhanced color "Helvetica" 16
set out 'bt-basenp-alpha.eps'
set title 'Performance of MCTS(np10,alpha) for different alphas in Breakthrough'
set multiplot
set xlabel 'Alpha'
set ylabel 'Win rate of MCTS(np10,alpha) vs. MCTS(np10) (%)'
set xrange [0:1.1]
set yrange [:80]
plot "bt-basenp-1s-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second / move', \
     "bt-basenp-5s-alpha.dat" using 1:2 with linespoints lt 3 lw 3 title '5 seconds / move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50% mark'


