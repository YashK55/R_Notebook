# ---------------------------------------------
# Title: Vector & List Demonstration
# Author: Yash Katekhaye
# ---------------------------------------------

cat("Created By: Yash Katekhaye\n")
cat("Vector & List Demonstration\n\n")              # Title

vector1 <- c(1, 2, 3, 4, 5)                         # Initialization of Vector 1
vector2 <- c(6, 7, 8, 9, 0)                         # Initialization of Vector 2
cat("Log: Running Arithmethic Operations.\n\n") # Log

sum <- vector1 + vector2                            # Addition
sub <- vector1 - vector2                            # Subtraction
pro <- vector1 * vector2                            # Multiplication
div <- vector1 / vector2                            # Division

resultlist1 <- list(
  Date = date(),                                    # Date (List Element)
  Log = "Printing Result for the operations.",      # Log  (List Element)
  sum, sub, pro, round(div, digits = 2)             # List Elements
)
resultlist2 <- list(
  Log = "Printing Done"                             # Log  (List Element)
)

result <- c(resultlist1, resultlist2)               # Merging List
unlisted <- unlist(result[3:6])                     # Unlist

print(result)                                       # Printing
cat("Log: Unlisting.")
print(unlisted)                                     # Printing