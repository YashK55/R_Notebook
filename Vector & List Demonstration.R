# ---------------------------------------------
# Title: Vector & List Demonstration
# Author: Yash Katekhaye
# ---------------------------------------------

cat("Created By: Yash Katekhaye\n")
cat("Vector & List Demonstration\n\n")              # Title

vector1 <- c(1, 2, 3, 4, 5)                         # Initialization of Vector 1
vector2 <- c(6, 7, 8, 9, 0)                         # Initialization of Vector 2
cat("Log: Running Arithmethic Operations.\n\n") # Log

sum <- vector1[1:5] + vector2                       # Addition
sub <- vector1[1:3] - vector2[3:5]                  # Subtraction
pro <- vector1[1:3] * vector2[2:4]                  # Multiplication
div <- vector1[1:4] / vector2[2:5]                  # Division
min <- min(vector1[1:3])                            # Minimum Value in Vector
max <- max(vector2[2:5])                            # Maximum Value in Vector
asc <- sort(vector1, decreasing = FALSE)            # Sorting in ascending
des <- sort(vector1, decreasing = TRUE)             # Sorting in descending

resultlist1 <- list(
  Date = date(),                                    # Date (List Element)
  Log = "Printing Result for the operations.",      # Log  (List Element)
  sum, sub, pro, round(div, digits = 2), min, max,  # List Elements
  asc, des
)
resultlist2 <- list(
  Log = "Printing Done"                             # Log  (List Element)
)

result <- c(resultlist1, resultlist2)               # Merging List
unlisted <- unlist(result[3:6])                     # Unlist

print(result)                                       # Printing
cat("Log: Unlisting.")
print(unlisted)                                     # Printing