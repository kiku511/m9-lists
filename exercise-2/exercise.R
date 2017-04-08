# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
random.vector <- runif(10, 0, 99)
random.list <- as.list(random.vector)

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
random.list <- lapply(random.list, round)


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase
sentence <-("Beauty queen of only 18, she had some trouble with herself; he was always there for her, she always belonged to someone else.")

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
letter.list <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
letter.vector <- letter.list[[1]]

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(letter.vector)

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!
CountOccurences <- function(single.letter, all.letters) {
  return(length(all.letters[all.letters == single.letter]))
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
CountOccurences('e', letter.vector)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).
frequencies <- as.list(sapply(unique.letters, CountOccurences, letter.vector))

# Print the resulting list of frequencies
print(frequencies)