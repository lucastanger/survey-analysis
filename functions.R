perc <- function(x, y) {
  return(x / y * 100)
}

between_c <- function(data, col,  x, y) {
  return (data %>% filter(between(col, x, y)))
}
