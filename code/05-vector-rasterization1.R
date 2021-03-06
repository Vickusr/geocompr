library(tmap)

r0p = tm_shape(cycle_hire_osm_projected) + tm_symbols(col = "capacity", title.col = "Capacity: ", size = 0.25) + 
  tm_layout(title = "A. Points", legend.position = c("right", "bottom"))

r1p = tm_shape(ch_raster1) + tm_raster(legend.show = TRUE, title = "Values: ") + tm_layout(title = "B. Presence/absensce", legend.position = c("right", "bottom"))

r2p = tm_shape(ch_raster2) + tm_raster(legend.show = TRUE, title = "Values: ") + tm_layout(title = "C. Count", legend.position = c("right", "bottom"))

r3p = tm_shape(ch_raster3) + tm_raster(legend.show = TRUE, title = "Values: ") + tm_layout(title = "D. Aggregated capacity", legend.position = c("right", "bottom"))

print(tmap_arrange(r0p, r1p, r2p, r3p, ncol = 2))