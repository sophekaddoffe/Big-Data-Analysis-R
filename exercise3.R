library(tidyverse)
library(readxl)

read_csv("import_training_files/spotify2018.csv")
read_csv("import_training_files/ches_2017.csv")
ches_modified <- read_csv("import_training_files/ches_2017_modified.csv")
read_csv("import_training_files/fiction.csv")
books <- read_tsv("import_training_files/books.tsv")
read_delim("import_training_files/books.txt", delim = "|")
read_excel("import_training_files/publishers_with_places.xlsx")

# books: multiple authors should be stored in author_1, author_2, etc.
books
tidy_books <- books %>%
  separate(author, into = C("author_1", "author_2", "author_3"), sep = "and")

books %>%
  as.factor("author")


# ches_2017_modified: each variable should get a column
ches_modified %>%
  separate()




# publishers: U.S. state should be in an extra column; both sheets should be read in. Hint: tibbles can be bound together using bind_rows()
