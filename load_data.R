if(!require(tidyverse)) {
  install.packages("tidyverse", dependencies = T)
  require(tidyverse)
}

so_20 <- read.csv(file = 'data/survey_results_public.csv')

so_20_schema <- read.csv('data/survey_results_schema.csv')