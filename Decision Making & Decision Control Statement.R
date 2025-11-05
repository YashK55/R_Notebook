# -----------------------------------------------------------------
# Title: Decision Making & Decision Control Statement Demonstration
# Author: Yash Katekhaye
# -----------------------------------------------------------------
cat("Created By: Yash Katekhaye\n\n")

cat("Log: Fibonacci Series.\n")
num <- as.integer(readline("Enter a positive number: "))
fibNum1 <- 0
fibNum2 <- 1
cat("Log: Printing Fibonacci Series.\n")
for (i in 1:num) {
  cat("Fibonacci Number", i, "is:", fibNum1, "\n")
  fibNext <- fibNum1 + fibNum2
  fibNum1 <- fibNum2
  fibNum2 <- fibNext
}
cat("Log: Successfully printed Fibonacci Series.\n\n")

cat("Log: Multiplication Table.\n")
cat("Log: Printing Multiplication Table of", num, ".\n")
i     <- 01
limit <- 10
while(i <= limit){
  cat(num, "x", i, "=", num*i, "\n")
  i <- i + 1
}

cat("\nLog: Odd/Even Check.\n")
cat("Log: Checking for", num, "\n")
if(num %% 2 == 0){
  cat("Log:", num, "is a EVEN Number\n\n")
} else {
  cat("Log:", num, "is a ODD Number\n\n")
}

cat("Log: Prime/Non-Prime Check.\n")
cat("Log: Checking for", num, "\n")
if(num <= 1) {
  cat("Log:", num, "is a Non-Prime Number\n")
} else if(num == 2) {
  cat("Log:", num, "is a Prime Number\n")
} else if(num %% 2 == 0){
  cat("Log:", num, "is a Prime(Even) Number\n")
} else {
  for (i in 3:sqrt(num)) {
    if(i %% 2 != 0 && num %% i == 0) {
      cat("Log:", num, "is a Non-Prime Number\n\n")
    } else {
      cat("Log:", num, "is a Prime Number\n\n")
    }
  }
}
cat("Log: Printing prime numbers upto", num, "\n")
for (num in 2:num) {
  for (i in 2:sqrt(num)) {
    if(num %% i == 0) {
      cat(num, " ")
    }
  }
}

cat("\n\nLog: Addition of unlisted integer.")
num5   <- as.integer(readline("Enter a 5-digit Number: "))
digits <- as.integer(unlist(strsplit(as.character(num5), "")))
cat("Log: Sum of 5-digit Number is", sum(digits), "\n\n")

cat("Log: Reversing 5 Digit Number ", num5, "\n")
Rnum <- 0
temp <- num5
while (num5 > 0) {
  lastdigit <- temp %% 10
  Rnum      <- Rnum *  10 + lastdigit
  temp      <- temp %/% 10
}
cat("Log: Reverse of 5 Digit Number is", Rnum, "\n\n")

cat("Log: Checking for Armstrong Number.\n")
numLength <- length(num5)
armstrong_sum <- sum(num5 ^ numLength)
if(num5 == armstrong_sum) {
  cat("Log:", num5, "is a ARMSTRONG Number.\n")
} else {
  cat("Log:", num5, "is NOT an ARMSTRONG Number.\n")
}

cat("Log: Checking for Palindrome Number.")
if(num5 == Rnum) {
  cat("Log:", num5, "is a PALINDROME Number.\n")
} else {
  cat("Log:", num5, "is NOT a PALINDROME Number.\n")
}

cat("Log: Factorial of Number ", num, "is:", factorial(num), "\nSteps:\n")
fact <- 1
 while (i == num) {
  fact <- fact * i
  cat("Step", i, ";", fact, "\n")
  i <- i + 1
 }

cat("Log: BREAK and NEXT")
for(i in 1:30) {
  if(i == 19){
    cat("Skipping number", i, "\n")
  }
  if(i == 25){
    cat("Breaking at", i, "\n")
  }
  cat(i, "\n")
}