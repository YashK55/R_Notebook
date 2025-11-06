# -----------------------------------------------------------------
# Title: In-Built Functions and Functions Demonstration
# Author: Yash Katekhaye
# -----------------------------------------------------------------
cat("Created By: Yash Katekhaye\n\n")

cat("Log: In-Built Functions.\n")
start <- as.integer(readline("Enter the starting number  : "))
end   <- as.integer(readline("Enter the ending number    : "))
step  <- as.integer(readline("Enter the step value number: "))
lOut  <- as.integer(readline("Enter the sequence length  : "))
cat("\nLog: Initializing the sequence.\n")
cat("\nLog: Incrementing the sequence.\n")
print(seq(from = start, to = end, by =  step))
cat("\nLog: Decrementing the sequence.\n")
print(seq(from = end, to = start, by = -step))
cat("\nLog: Spliting the sequence in", lOut, "parts.\n")
print(seq(from = start, to = end, length.out = lOut))

cat("\n\nLog: Mathematical Operations of Vector.")
Nvector <- as.integer(readline("Enter the length of vector: "))
cat("Log: Initializing the vector of length", Nvector, ".\n")
vectorX <- c()
for (i in 1:Nvector) {
  element <- as.integer(readline(paste("Element", i, ": ")))
  vectorX <- c(vectorX, element)
}
cat("Log: Initialized the vector: ", print(vectorX), "\n")
cat("Log: performing operations on vector.\n",
    "     Result of Operations:\n",
    "     ---------------------\n",
    "     Sum of vector  =", sum(vectorX),"\n",
    "     Mean of vector =", mean(vectorX),"\n",
    "     Min of vector  =", min(vectorX),"\n",
    "     Max of vector  =", max(vectorX),"\n")

cat("\nLog: Calculating Percentage.")
Nsubjects <- 6
marks     <- numeric(Nsubjects)
Tmarks    <- 100 * Nsubjects
cal_percentage <- function(total, sub_count){
  return(round((total / sub_count), digits = 2))
}

for (i in 1:Nsubjects) {
  marks[i] <- as.integer(readline(paste("Enter marks for subject", i, ": ")))
}
cat("Log: Marks recorded for", Nsubjects, "subjects.\n")
tmarks <- sum(marks)
cat("     Result\n")
cat("     Total Marks:", tmarks, "/", Tmarks, "\n")
cat("     Percentage :", cal_percentage(tmarks, Nsubjects), "%\n\n")

cat("Log: User-Defined Function.\n")
cat("Log: Calculating Surface area and Volume of Cone.\n")
radius  <- 10
Sheight <- 13
height  <- sqrt(Sheight^2 - radius^2)

base_area_cone     <- function(r) {
  return(pi * r^2)
}
circumference_cone <- function(r) {
  return(2 * pi * r^2)
}
volume_cone <- function(base, h) {
  return((1/3) * base * h )
}
surface_area-cone <- function(sh, base, circum) {
  return(base + (0.5 * circum * sh ))
}
cat("     Result:")
cat("     Base Area:", base_area<- base_area_cone(radius), "\n")
cat("     Circumference:", circumference <- circumference_cone(radius), "\n")
cat("     Volume:", volume <- volume_cone(radius, height, base_area), "\n")
cat("     Surface Area:", surface_area <- surface_area_cone(radius, Sheight, base_area, circumference),"\n\n")

cat("Log: Sorting the array.\n")
selection_sort <- function(array){
  array_len <- length(array)
  for(i in 1:(array_len-1)){
    min_index <- i
    for(j in (i+1:n)){
      if(array[j] < array[min_index]){
        min_index <- j
      }
    }
    if(min_index != i) {
      temp             <- array[i]
      array[i]         <- array[min_index]
      array[min_index] <- temp
    }
  }
  return(array)
}

bubble_sort <- function(array){
  array_len <- length(array)
  for(i in 1:(array_len-1)) {
    for(j in 1:(array_len-1)) {
      if(array[j] > array[j+1]) {
        temp       <- array[j]
        array[j]   <- array[j+1]
        array[j+1] <- temp
      }
    }
  }
  return(array)
}

ay <- array(marks)
Ssort_array <- selection_sort(ay)
Bsort_array <- bubble_sort(ay)
cat("Log: Selection Sorted array:", print(Ssort_array),"\n")
cat("Log: Bubble    Sorted array:", print(Bsort_array),"\n\n")

discriminat <- function(a, b, c) {
  return(b^2 - 4*a*c)
}

quadratic_roots <- function(a, b, c, d) {
  if(d > 0) {
    root1 <- (-b + sqrt(d) / (2*a))
    root2 <- (-b + sqrt(d) / (2*a))
    return(c(root1, root2))
  } else if( d == 0) {
    root <- (-b / (2*a))
    return(c(root, root))
  } else {
    croot1 <- -sqrt(-d)
    croot2 <- +sqrt(-d)
    return(c(croot1, croot2))
  }
} 

cat("Log: Roots of Quadratic Equation.\n")
a <- as.integer(readline("Enter coefficient a: "))
b <- as.integer(readline("Enter coefficient b: "))
c <- as.integer(readline("Enter coefficient c: "))

d <- discriminant(a, b, c)
roots <- quadratic_roots(a, b, c, d)
print(roots)