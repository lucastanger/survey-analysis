standardDB <- "survey_results_public"

dbGetAll <- function(db = standardDB) {
  return (
    dbGetQuery(con, paste0(
      "SELECT * FROM ", db, ";"
    ))
  )
}

dbGetByCol <- function(col, db = standardDB, includeNA=FALSE) {
  if (!includeNA) {
    return (
      dbGetQuery(con, paste0(
        "SELECT ", col, " FROM ", db, " WHERE ", col ," IS NOT NULL;")
      ))
  } else {
    return (
      dbGetQuery(con, paste0(
        "SELECT ", col, " FROM ", db, ";")
      ))
  }
  
}

dbGetByQuery <- function(query) {
  return (
    dbGetQuery(con, query)
    )
}
