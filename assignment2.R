library(tidyverse)
library(dplyr)

livestock <- c(53323, 1334, 4323)
names(livestock) <- c("chicken", "cows", "horses")
print(livestock)


new_chicken_number <- 0.75 * livestock[1] + livestock[1]
new_cow_number <- 0.3 * livestock[2] + livestock[2]
new_horse_number <- 0.5 * livestock[3] + livestock[3]

new_livestock <- c(new_chicken_number, new_cow_number, new_horse_number)

print(new_livestock)
print(new_horse_number)
print(new_cow_number)
print(new_chicken_number)

new_livestock_round <- ceiling(new_livestock)
print(new_livestock_round)

mod_livestock <- new_livestock_round %% 2000
print(mod_livestock)


number_of_tax_units <- (new_livestock_round - mod_livestock)/2000
print(number_of_tax_units)
max(number_of_tax_units)

# mod_new_chicken_number <- 93316 %% 2000
# print(mod_new_chicken_number)

livestock_tibble <- tibble(
  breed = names(livestock),
  number_timepoint_1 = livestock,
  number_timepoint_2 = new_livestock_round,
  number_of_tax_units = number_of_tax_units
)

print(livestock_tibble)

# what should be stored as a factor? animal type
as.factor(livestock)
print(livestock)
