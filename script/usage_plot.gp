reset
set ylabel 'time(sec)'
set xlabel 'Fragment in 1 sec(N)'
set title 'performance comparison'
set boxwidth 0.9 relative
set style data histograms
set style histogram cluster
set style fill solid 1.0 border lt -1
set term png enhanced font 'Consolas,10'
set output 'usage_plot.png'

plot [:][:]'result_clock_gettime.csv' using 2:xtic(1) with histogram title 'baseline' , \
'' using 3:xtic(1) with histogram title 'openmp (2 thread)' , \
'' using 4:xtic(1) with histogram title 'openmp (4 thread)' , \
'' using 5:xtic(1) with histogram title 'avx' , \
'' using 6:xtic(1) with histogram title 'avx unroll'
