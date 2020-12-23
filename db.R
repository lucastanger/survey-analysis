sort(unique(odbcListDrivers()[[1]]))

con <- DBI::dbConnect(odbc::odbc(),
                      Driver   = "MySQL ODBC 8.0 ANSI Driver",
                      Server   = "127.0.0.1",
                      UID      = rstudioapi::askForPassword("Database user"),
                      PWD      = rstudioapi::askForPassword("Database password"),
                      Database = "new_schema",
                      Port     = 3306)

#so_20 <- read_csv(file = 'data/survey_results_public.csv')

#so_20 <- so_20 %>%
#  mutate(id = row_number())

#so_20_schema <- read_csv('data/survey_results_schema.csv')

