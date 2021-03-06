set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'kalah-alpha.tex'
set title 'Performance of MCTS(fet$4$,im$\alpha$) vs. MCTS(fet$4$) in Kalah'
set multiplot
set xlabel '$\alpha$'
set ylabel '{\small Win rate of MCTS(fet$4$,im$\alpha$) (\%)}'
set xrange [0:1.1]
set yrange [:85]
plot "kalah-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second / move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50\% mark'


