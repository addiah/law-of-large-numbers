
## Set up environment
N <- 0 
X <- 0 
V <- NA

## Main loop will run until the mean it hits the expected value --
## The the assumption is that with more numbers, the means will --
## become closer and closer to the mean until they converge 
while (X != .682){ 
  N <- N + 100
  S <- 0 
  X <- 0 
  Y <- 0 
  for (i in rnorm(N)){ 
    if (i < 1 & i > -1){ 
      S <- S + 1 
    }
  }
  X <- S / N 
  Y <- X - 0.682
  V <- c(V,Y) 
}

## Create simple plot to visually check the law of large numbers
plot(V, 
  pch = 20, frame = FALSE,
  xlab = "N", ylab = "Difference from E(X)", col = ifelse (V < .0034 & V > -.0034, "#4B2E84", "#A29061"))
