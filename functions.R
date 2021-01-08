perc <- function(x, y) {
  return(x / y * 100)
}

between_c <- function(data, col,  x, y) {
  return (data %>% filter(between(col, x, y)))
}

genderApply <- function(x, out) {
  if (x["Gender"] == "Man") {
    return("Man");
  }
  else if (x["Gender"] == "Woman") {
    return("Woman");
  }
  else {
    return("Other");
  }
}
