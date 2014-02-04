set terminal epslatex color colortext standalone
set out 'loa-alpha.tex'
set title 'Performance of MCTS(im$\alpha$) for different $\alpha$ in LOA'
set multiplot
set xlabel '$\alpha$'
set ylabel '{\small Win rate of MCTS(im$\alpha$) (\%)}'
set xrange [0:1.1]
set yrange [:90]
plot "loa-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title 'PB (Move Categories)', \
     "loa-alpha.dat" using 1:3 with linespoints lt 3 lw 3 title 'No UCT Enhancements + $\alpha\beta$ Playout', \
     "loa-alpha.dat" using 1:4 with linespoints lt 4 lw 3 title 'No UCT Enhancements + Simple Playout', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50\% mark'


