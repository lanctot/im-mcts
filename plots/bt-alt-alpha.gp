set terminal epslatex color colortext standalone
set out 'bt-alt-alpha.tex'
set title 'Performance of MCTS($\alpha$) using alternative baseline'
set multiplot
set xlabel '$\alpha$'
set ylabel '{\small Win rate of MCTS($\alpha$) vs. MCTS (\%)}'
set xrange [0:1.1]
set yrange [:80]
plot "bt-base-1s-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second per move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50\% mark'

