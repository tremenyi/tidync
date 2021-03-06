context("thredds")

test_that("thredds works", {
  skip_on_travis()
  library(tidync)
  u <- "http://coastwatch.pfeg.noaa.gov/erddap/griddap/erdQSwind3day"
  (unc <- tidync(u))
  
  unc %>% activate("D2")
  
  unc %>% hyper_filter(longitude = index < 100, latitude = latitude > 60, time = index == 1)

  ## example thanks to Ben Tupper
  uri <- 'https://oceandata.sci.gsfc.nasa.gov:443/opendap/MODISA/L3SMI/2016/001/A20160012016032.L3m_R32_SST_sst_9km.nc'
  
  (nc <- tidync(uri))
  
})


