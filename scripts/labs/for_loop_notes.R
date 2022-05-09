#3 parts to a for loop
#1 for
for
#2 your object along with some sequence of values
()
#3 your curly brackets
{}

for(){
  print(i)
}

# reminder that i stands for index
# in nested for loops the convention is to use 'j' instead of 'i' for the second

# We want a sequence that prints the numbers 1-10. Example:
for(i in 1:10) {
  print(i)
}

# What if you want to pull out the values from a dataset?
# For example, pulling out 'miles per gallon' for the mtcars datset:
for(i in 1:nrow(mtcars)) {
  print(mtcars[i, "mpg"])
}

# Another important point related to for loops: preallocation
# Why?
# A lot of people complain that for loops are too slow. This is because of preallocation.
# In other words, what are you saving to your computer?
# Each time you're running through a loop R is going to your computer and saying "Hey I need some 
# memory to save this value I just created, can you give me some value? EACH TIME.
# Preallocation on the other hand, gathers the memory ahead of time so it doesn't have to do that.

# Nested for loop
# structure:

for (i in 1:5) {
  for (j in 1:5) {
    
  }
}
# A for loop inside of a for loop.

# Another way to conceptualize:
for (i in 1:5) {
  print(paste("i is", i))
  for (j in 1:5) {
    
  }
}
