#scratch
Df <- readRDS('./data/bact_and_fungi_clean_ps_object')
sam_data <- Df@sam_data %>% 
  as('data.frame') %>% 
  select(Host, Structure, Microbe, geo_loc_name, Location, Lat, Lon) %>% 
  filter(!is.na(Lat),
         !is.na(Lon))

sam_data %>% kable() %>% 
  kable_minimal(lightable_options = 'hover') %>% 
  scroll_box(width = "800px", height = "400px")