y <- 1.3879
low <- uniroot(function(x){y - dbeta(x, 2, 4)},
        interval = c(0, 0.2))$root
upp <- uniroot(function(x){y - dbeta(x, 2, 4)},
        interval = c(0.3, 1))$root
diff(pbeta(c(low, upp), 2, 4))

testfun <- Vectorize(function(x){y - dbeta(x, 2, 4)})
