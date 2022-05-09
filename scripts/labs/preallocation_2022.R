###############################
# A Lesson in Preallocation
###############################

# load required packages
library(tictoc) # measures the length of time

# create a sequence from 1 to 100 million
my_numbers             <- 1:1e8

# don't preallocate memory
my_numbers_sqrt <- NULL # 0Bs

# multiple my_numbers by 100
tic()
for (i in my_numbers) {
  my_numbers_sqrt[i] <- sqrt(i)
}
toc()

# preallocate memory
my_numbers_sqrt      <- rep(NA_real_, max(my_numbers)) # 762.9 MB

# multiply my_numbers by 100
tic()
for (i in my_numbers) {
  my_numbers_sqrt[i] <- sqrt(i)
}
toc()



