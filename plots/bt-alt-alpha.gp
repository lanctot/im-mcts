set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'bt-alt-alpha.tex'
set title 'Performance of MCTS(bl'',im$\alpha$) vs. MCTS(bl'') using alternative baseline'
set multiplot
set xlabel '$\alpha$'
set ylabel '{\small Win rate of MCTS(bl'',im$\alpha$) (\%)}'
set xrange [0:1.1]
set yrange [:80]
plot "bt-alt-1s-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second per move', \
     "bt-alt-5s-alpha.dat" using 1:2 with linespoints lt 3 lw 3 title '5 seconds per move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50\% mark'


