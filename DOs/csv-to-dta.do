import delimited C:\Users\tommy\Desktop\CSVs\datasheet.csv

reshape long lo_t co_t do_t bo_t, i(obs) j(t)

save "C:\Users\tommy\Desktop\dataset.dta"
