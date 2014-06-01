set terminal epslatex color colortext standalone header "\\usepackage[T1]{fontenc}\n\\usepackage{mathptmx}\n\\usepackage{helvet}"
set out 'bt-basenp-alpha.tex'
set title 'Performance of MCTS(bl,np,im$\alpha$) vs. MCTS(bl,np) in Breakthrough'
set multiplot
set xlabel '$\alpha$'
set ylabel '{\small Win rate of MCTS(bl,np,im$\alpha$) (\%)}'
set xrange [0:1.1]
set yrange [:80]
plot "bt-basenp-1s-alpha.dat" using 1:2 with linespoints lt 1 lw 3 title '1 second / move', \
     "bt-basenp-5s-alpha.dat" using 1:2 with linespoints lt 3 lw 3 title '5 seconds / move', \
     f(x)=50.0
replot f(x) w l lw 1 lt 2 title '50\% mark'


