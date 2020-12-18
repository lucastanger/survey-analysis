if(!require(tidyverse)) {
  install.packages("tidyverse", dependencies = T)
  require(tidyverse)
}

so_20 <- read_csv(file = 'data/survey_results_public.csv')

so_20 <- so_20 %>%
  mutate(id = row_number())

so_20_schema <- read_csv('data/survey_results_schema.csv')