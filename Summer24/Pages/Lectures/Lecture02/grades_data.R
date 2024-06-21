set.seed(123)

a <- rnorm(20, 2 * 10, 4)
b <- rnorm(20, 2 * 8, 4)
c <- rnorm(30, 2 * 9.5, 4.5)
d <- rnorm(15, 2 * 7, 3)
f <- rnorm(5, 2 * 2, 4)


grades <- c(
  rep("A", 20),
  rep("B", 20),
  rep("C", 30),
  rep("D", 15),
  rep("F", 5)
)

data <- data.frame(
  ltr_grd = grades,
  stdy_hrs = c(a, b, c, d, f)
)
data$ltr_grd <- factor(
  data$ltr_grd,
  ordered = T,
  levels = c("A", "B", "C", "D", "F")
)


write.csv(data, "grade_data.csv", row.names = F)

boxplot(stdy_hrs ~ ltr_grd, data)
