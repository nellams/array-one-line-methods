names = [
  "John",
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]

## Accessing elements within our `names` array:

# 1. Retrieve the first name from the `names` array.
puts "The first name from the array is #{names.first}."
# or
puts "the first name from the array is #{names[0]}"

# 2. Retrieve the second name from the `names` array.
puts "The second name from the array is #{names[1]}"

# 3. Retrieve the third name from the `names` array.
puts "The third name from the array is #{names[2]}"

# 4. Retrieve the last name from the `names` array.
puts "The last name from the array is #{names[-1]}"

# 5. Retrieve the second-to-last name from the `names` array.
puts "The second to last name from the array is #{names[-2]}"

# 6. Create a new array with the first two elements in the `names` array.
first_2_names = names[0..1]

# 7. Create a new array with the first four elements in the `names` array.
names_four = names[0..3]

## Manipulating the `names` array:

# 1. Add your name to the `names` array.
names << "Sarah"

# 2. Replace the first element in the array with your best friend's name.
names[0] = "Katherine"

# 3. Reassign the last element in the array with the name of your arch-nemesis.
names[-1] = "Dr. Evil"


## Asking questions about our `names` array:

# 1. How many names are on the list?
puts "The array is #{names.length} names long."
# or
puts "There are #{names.count} names on the list."

# 2. Who is the third name on the list?
puts "The third name on the list is #{names[2]}"

# 3. Output each name and where it occurs in the array.
names.each_with_index{ |name, i| puts "#{i + 1}. #{name}"}

# 4. Sort the names in alphabetical order.
puts names.sort.inspect

# 5. Sort the names by smallest number of characters to largest.
puts names.sort_by{ |name| name.length }.inspect

# 6. Supply the sum of all the characters in the list of names.
character_sum = names.inject(:+).length

# 7. Do any of the names start with "y"?
names.any? { |name| name[0] == "Y" }

# 8. Are all of the names 3 characters long or larger?
names.all? { |name| name.length >= 3 }

# 9. Using the `names` array, create a new array containing only palindrome names.
names.select{ |name| name.downcase == name.reverse.downcase }

# 10. Find the first name that starts with "S".
names.find{ |name| name[0] == "S"}

# 11. Create a new array containing names that start with "S".
names_s = names.find_all{ |name| name[0] == "S"}

# 12. Create a new array of names ending with a vowel.
vowel = ["a", "e", "i", "o", "u"]
names_vowel = names.find_all{ |name| vowel.include?(name[-1])}

# 13. Divide the names into groups of 3.
puts names.each_slice(3) { |group| puts group.inspect }
