x <- 4
if (x > 0 | x<100) { # '|' is for OR condition, similarly '&' is for and, and '!' is for not
  print("x is a positive number")
}
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}