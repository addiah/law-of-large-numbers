
##Set up environment
N <- 0 #Creates sample size variable
X <- 0 #Creates "probability" variable
V <- NA #Creates vector to capture each X

while (X != .682){ #Creates loop to add to N until E(X) is reached
  N <- N + 100 #Adds 100 per loop
  S <- 0 #Creates "success" Variable, clears it for each loop
  X <- 0 #Clears prob from each loop
  Y <- 0 #Creates variable for dist from E(X), clears it for each loop
  for (i in rnorm(N)){ #Creates list of N random numbers
    if (i < 1 & i > -1){ #Sorts list for qualifying numbers
      S <- S + 1 #For each success adds 1
    }
  }
  X <- S / N 
  Y <- X - 0.682 #Calculates distance from E(X)
  V <- c(V,Y) #Adds this distance to the vector with all previous distances.
}

##Create simple plot with N = x, Y = y
plot(V, 
  pch = 20, frame = FALSE,
  xlab = "N", ylab = "Difference from E(X)", col = ifelse(V < .0034 & V > -.0034, "#4B2E84", "#A29061"))
