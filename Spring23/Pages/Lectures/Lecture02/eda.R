dat <- read.csv("gpa_study_hours.csv", header = T)

head(dat)
plot(dat$gpa, dat$study_hours, pch = 16)

dat2 <- read.csv("height_weight.csv",
                   header = T)

dat2 <- dat2[,-c(1, 4:7)]
colnames(dat2) <- c("height_in", "weight_lbs")

head(dat2)


plot(dat2$height_in, dat2$weight_lbs, pch = 16)
