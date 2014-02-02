set terminal postscript eps enhanced color "Helvetica" 16
set out 'loa-alpha.eps'
set title 'Performance of MCTS(im) for different alphas in LOA'
set multiplot
set xlabel 'Alpha'
set ylabel 'Win rate (%)'
set xrange [0:1.1]
set yrange [:80]
plot "loa-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title 'Progressive Bias (Move Categories)', \
     "loa-alpha.dat" using 1:3 with linespoints lt 3 lw 3 title 'No UCT Enhancements', \
     "loa-alpha.dat" using 1:4 with linespoints lt 4 lw 3 title 'No UCT Enhancements + Simple Playout', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50% mark'


