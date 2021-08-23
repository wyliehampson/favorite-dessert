library(tidyverse)
library(here)
library(janitor)

dessert_iconic <- read_csv(here("data","iconic_desserts.csv")) %>% 
  clean_names()

our_desserts <- read_csv(here("favorite_desserts.csv")) %>% 
  clean_names() %>% 
  mutate(favorite_dessert = tolower(favorite_dessert))

str_detect(string = dessert_iconic$dessert, pattern = our_desserts$Favorite_dessert)                           


for (i in 1:length(our_desserts)) {
  if(our_desserts$first_name[i] == "Julia") {
    if (our_desserts[i] %in% dessert_iconic$dessert) {
      print("iconic")
    } else {
      print("unique")
    }
  }
}
