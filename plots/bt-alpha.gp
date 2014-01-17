set terminal postscript eps enhanced color "Helvetica" 20
set out 'bt-alpha.eps'
set title 'Performance of MCTS(im) for different alphas in LOA'
set multiplot
set xlabel 'Alpha'
set ylabel 'Win rate (%)'
set xrange [0:1.1]
set yrange [:80]
plot "bt-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title 'progressive bias from move categories enabled', \
     "bt-alpha.dat" using 1:3 with linespoints lt 3 lw 3 title 'progressive bias from move categories disabled', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50% mark'


