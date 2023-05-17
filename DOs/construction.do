*creates 10 bins and calculates hit rate for each bin
egen lo_t_bin = cut(lo_t) if t == 0, group(10)
egen r_win_prop = mean(r_win)if t == 0, by(lo_t_bin)
twoway (scatter r_win_prop lo_t_bin) (function y=0.1*x, range(lo_t_bin))

*computes Brier scores for each observation
generate l_brier = (r_win - lo_t)^2
generate c_brier = (r_win - co_t)^2
generate d_brier = (r_win - do_t)^2