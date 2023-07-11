library(tidyverse)
sp_solow <- scan("../inst/extdata/data91.txt") %>%
    matrix(ncol = 7, byrow = TRUE) %>%
    as_tibble %>%
    set_names(c("long", "lat", "lny60", "lny95", "gy", "lns", "lnngd")) %>%
    bind_cols(read_csv("../inst/extdata/countries.txt")) %>% 
    select(- lat, - long) %>%
    mutate(gdp60 = exp(lny60), gdp95 = exp(lny95), saving = exp(lns), labgwth = exp(lnngd) - 0.05) %>%
    select(- (lny60:lnngd)) %>%
    relocate(gdp60:labgwth, .before = 4)
