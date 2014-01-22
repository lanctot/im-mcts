set terminal postscript eps enhanced color "Helvetica" 20
set out 'bt-alpha.eps'
set title 'Performance of MCTS(alpha) for different alphas in Breakthrough'
set multiplot
set xlabel 'Alpha'
set ylabel 'Win rate of MCTS(alpha) vs. MCTS (%)'
set xrange [0:1.1]
set yrange [:95]
plot "bt-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second / move', \
     "bt-alpha-5s.dat" using 1:2 with linespoints lt 3 lw 3 title '5 seconds / move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50% mark'


