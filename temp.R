library(tidyverse)
library(spotifyr)

russ <- get_artist_audio_features("Russ", 
                                  include_groups = c("album", "single", "appears_on", "compilation"))

View(russ %>% arrange(desc(album_release_date %>% as_date())))

eminem <- get_artist_audio_features("Eminem", 
                                    include_groups = c("album", "single", "appears_on"))
