# Task 1: Creating and Modifying Data Frames

# (i) Create a new data frame named "Human.body"
Human.body <- data.frame(
  Height = c(160, 174, 172, 161, 175, 181, 180),
  Weight = c(110, 86, 75, 75, 71, 91, 85),
  Gender = c("Female", "Female", "Male", "Female", "Male", "Male", "Male")
)

# (ii) Display the created data frame
print(Human.body)

# (iii) Copy the data frame to a new one "Human.body.copy"
Human.body.copy <- Human.body

# (iv) Change the last record's Gender to "Female"
Human.body.copy$Gender[7] <- "Female"

# (v) Add a new column "Age" with arbitrary values
Human.body.copy$Age <- c(25, 30, 22, 28, 26, 29, 24)

# Task 2: Reading a text file into a data frame

# Read "test.txt" into a new data frame called "txtdata"
txtdata <- read.table("test.txt", header = TRUE, sep = "\t")

# Task 3: Extracting specific columns into a new data frame

# Create "coldata" with the last two columns from "txtdata"
coldata <- txtdata[, (ncol(txtdata)-1):ncol(txtdata)]

# Task 4: Reading a CSV file into a data frame

# Read "temp.csv" into a new data frame called "sheetdata"
sheetdata <- read.csv("temp.csv", header = TRUE)

# Task 5: Extracting specific rows into a new data frame

# Create "rowdata" with the second and third rows only from "sheetdata"
rowdata <- sheetdata[2:3, ]
