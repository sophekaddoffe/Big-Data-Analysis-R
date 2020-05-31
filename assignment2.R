library(tidyverse)

livestock <- c("chicken" = 53323, "cows" = 1334, "horses" = 4323)

new_chicken_number <- 0.75 * 53323 + 53323
new_cow_number <- 0.3 * 1334 + 1334
new_horse_number <- 0.5 * 4323 + 4323

new_livestock <- c(new_chicken_number, new_cow_number, new_horse_number)

print(new_livestock)
print(new_horse_number)
print(new_cow_number)
print(new_chicken_number)
new_livestock_round <- ceiling(new_livestock)
print(new_livestock_round)
