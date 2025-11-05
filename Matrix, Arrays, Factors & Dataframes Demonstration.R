# -----------------------------------------------------------
# Title: Matrix, Arrays, Factors and Dataframes Demonstration
# Author: Yash Katekhaye
# -----------------------------------------------------------
cat("Created By: Yash Katekhaye\n")

cat("Matrix, Arrays, Factors and Dataframes Demonstration\n\n")

cat("Log: Vector Creation.\n")
cat("Log: Taking user input for vector size and vector element.\n")
vector_size <- as.integer(readline("Enter number of Element in Vector: "))
vector <- c()
for (i in 1:vector_size) {
  vector <- c(vector, as.integer(readline(paste("Enter element", i, ": "))))
}
cat("Log: Vector elements recorded.\n")
cat("Vector:", vector, "\n\n")

cat("Log: Matrix Creation.")
num.row <- as.integer(readline("Enter number of rows in Matrix: "))
num.col <- as.integer(readline("Enter number of columns in Matrix: "))
cat("Log: Creating Matrix of size:", num.row, "x", num.col, "\n")
Matrix <- matrix(data = vector,
                       nrow = num.row,
                       ncol = num.col,
                       byrow = TRUE)
cat("Log: Matrix created successfully.\n", print(Matrix), "\n")

cat("Log: Accessing the element of Matrix.")
row_i <- as.integer(readline("Enter row number: "))
col_i <- as.integer(readline("Enter column number: "))
cat("Log: Element at", row_i, "x", col_i, "is", print(Matrix[row_i, col_i]), "\n")

cat("\nLog: Accessing the elements of Row in a Matrix.")
row_ia <- as.integer(readline("Enter row number: "))
cat("Log: Elements of row", row_i, "are", Matrix[row_ia,], "\n\n")

cat("Log: Accessing the element of Column in a Matrix.")
col_i <- as.integer(readline("Enter column number: "))
cat("Log: Elements of column", col_i, "are", Matrix[, col_i], "\n\n")

cat("Log: Creation of Matrix from matrix using rbind()")
num.NRrow <- as.integer(readline("Enter number of rows in new matrix: "))
num.NRcol <- as.integer(readline("Enter number of column in new matrix: "))
cat("Log: Creating Matrix of size",  num.NRrow, "x", num.NRcol, "\n")
newR_Matrix <- rbind(Matrix[num.NRrow,], Matrix[,num.NRcol])
cat(print(newR_Matrix), "\nLog: New Matrix created successfully using rbind().\n\n")

cat("Log: Creation of Matrix from matrix using cbind()")
num.NCrow <- as.integer(readline("Enter number of rows in new matrix: "))
num.NCcol <- as.integer(readline("Enter number of column in new matrix: "))
cat("Log: Creating Matrix of size",  num.NCrow, "x", num.NCcol, "\n")
newC_Matrix <- cbind(Matrix[num.NCrow,], Matrix[,num.NCcol])
cat(print(newC_Matrix), "\nLog: New Matrix created successfully using cbind().\n\n")

cat("Log: Arithmethic operations of Matrices.", list(newR_Matrix, newC_Matrix), "\n")
cat("Log: Addition of Matrices",    print(newR_Matrix + newC_Matrix),"\n")
cat("Log: Subtraction of Matrices", print(newR_Matrix - newC_Matrix),"\n")
cat("Log: Product of Matrices",     print(newR_Matrix * newC_Matrix),"\n")
cat("Log: Division of Matrices",    print(newR_Matrix / newC_Matrix),"\n\n")

cat("Log: Conversion of Matrix.\n")
cat("Log: Matrix successfully converted to 1D Array.\n", print(as.vector(newR_Matrix)), "\n\n")

cat("Log: Creation of Array.\n")
Nvector <- C(5:20)
arrays  <- array(c(vector, Nvector), dim = c(4, 5, 2), dimnames = NULL)
cat("Log: Array created successfully.\n", print(arrays), "\n\n")

cat("Log: Arithmethic operations of Arrays.\n")
cat("Log: Addition of Arrays",    print(arrays[,,1] + arrays[,,2]),"\n")
cat("Log: Subtraction of Arrays", print(arrays[,,1] - arrays[,,2]),"\n")
cat("Log: Product of Arrays",     print(arrays[,,1] * arrays[,,2]),"\n")
cat("Log: Division of Arrays",    print(arrays[,,1] / arrays[,,2]),"\n\n")

cat("Log: Application of apply() function.\n")
cat("Log: Sum of Row:",     apply(Matrix, 1, sum), "\n")
cat("Log: Sum of Column:",  apply(Matrix, 2, sum), "\n")
cat("Log: Mean of Row:",    round(apply(Matrix, 1, mean), digits = 2), "\n")
cat("Log: Mean of Column:", round(apply(Matrix, 2, mean), digits = 2), "\n\n")

cat("Log: Application of factor() function.\n")
set.seed(999)
ran_sample <- sample(LETTERS, 10, replace = TRUE)
class(ran_sample)
cat("\nLog: Converting Vector -> Factor\n")
dataf <- factor(ran_sample)
class(dataf)
cat(print(dataf), "\nLog: Extraction of Factor Levels\n")
nLevel <- as.integer(readline("Enter starting level: "))
mLevel <- as.integer(readline("Enter ending level: "))
cat("Log: Extracting [", nLevel, ":", mLevel, " Levels.\n", print(levels(nLevel:mLevel)), "\n")
cat("Log: Extraction of Data Frequency in data Factor.\n", table(dataf), "\n\n")
cat("Log: Ordered Data:", factor(ran_sample, levels = LETTERS, ordered = TRUE), "\n\n")

cat("Log: Application of Data Frames.\n")
examData <- data.frame(
  Roll_No = c(1, 2, 3, 4, 5, 6),
  Score   = c(9, 8, 7, 1, 2, 7),
  Attempt = c(1, 1, 2, 1, 2, 1),
  Course  = c("Maths", "Biology", "Hindi", "Science", "P.Ed"),
  stringsAsFactors = FALSE
)
cat("Log: Printing Data Frame.\n", print(examData), "\n")
specExamData <- examData[,c("Roll_No", "Score", "Course")]
cat("Log: Printing selected Data Frame.\n", print(specExamData), "\n")
cat("Log: Sumarizing Data Frame.\n", print(summary(examData)))