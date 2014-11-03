# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
            "Annabelle" => 0, "Ditto" => 3}

#********************************* ARRAY FINDING METHOD *********************************

# Person 1's solution
#pseudocode
#Iterates through array (source argument) via indices for match to thing_to_find argument.
#If matched, assigns String from source array to new output_array.
#Returns output_array.

def my_array_finding_method(source, thing_to_find)
  i = 0
  t = 0
  output_array = []
  while i < source.length
    if source[i].to_s.include?(thing_to_find)
      output_array[t] = source[i].to_s
      t += 1
    end
    i +=1
  end
  return output_array
end

#********************************* HASH FINDING METHOD *********************************
#pseudocode
#Iterates over hash values for a match to thing_to_find argument.
#Places keys of matching values in an array.
#Returns array.


def my_hash_finding_method(source, thing_to_find)
  output_array = []
  i = 0
  source.each_pair { |key,value|
    if value == thing_to_find
      output_array[i] = key
      i += 1
    end
  }
  return output_array
end




# # Identify and describe the Ruby method you implemented.
# #
# #
# #

# Person 2

# Psudocode:
#1) Use the each_with_index to iterate over the array and pass the code block the element and the index.
#2) Check if each element is an integer
#3) If an element is an integer set the value of the element equal to the original value plus the parameter thing_to_find

def my_array_modification_method(source, thing_to_find)
  source.each_with_index {|elem, index|
    if elem.is_a?(Integer)
      source[index] = (elem + thing_to_find)
    end
  }
end

# Psudocode:
#1) Use the each to iterate over the hash and pass the code block the key and the value of each pair.
#2) Set the value of each value equal to the original value plus the parameter thing_to_find

def my_hash_modification_method(source, thing_to_find)
  source.each{|key, value|
    source[key] = value + thing_to_find
  }
end

# # Identify and describe the Ruby method you implemented.
# I used the .each and .each with index methods respectively.  The .each_with_index goes through the array and passes the element and the element's index to the code block for each element in the array.  So in this case it goes through each element, checks to see if that element is an integer, and if it is replaces the element with the element's value + the number that you want to add (represented by the thing_to_find parameter).  For the my_hash_finding_method I used the .each method which goes through the hash (or array) and passes in both the key and the value to the code block.  In this case I then replaced each value with value + what you want to add (represented by the thing_to_find parameter).
# #
# #


# # Person 3
def my_array_sorting_method(source)
  return source.partition{|x| x.is_a? Integer}.map(&:sort).flatten
end

def my_hash_sorting_method(source)
  return source.sort_by {|k,v| [-v,k]}
end
p my_array_sorting_method(my_family_pets_ages)

#p my_array_sorting_method(i_want_pets)
# p my_hash_sorting_method(my_family_pets_ages)

# # Identify and describe the Ruby method you implemented.
=begin
For the array sorter, it checks the array for integers and returns a separate array for it. All non integers are then put in a separate array and both these arrays are placed into a single array. The map method then applies the sort within each of these 2 arrays. The final flatten then places each of the items in these arrays into a single large array. If we weanted the strings to be listed first in the array, we would modify the method to check for "x.is_a? String"" instead.

The hash sorter is a lot more simple and can be done in one enumerable. You follow the syntax where the first item k represents the key and the second item v represents the value.
=end

# # Person 4
def my_array_deletion_method(array, letter)
  array.delete_if { |data| data.to_s.match(letter.to_s)}
  return array
 end

def my_hash_deletion_method(hash, letter)
  hash.delete_if {|key,value| key == letter}
  return hash
end
# puts my_hash_deletion_method(my_family_pets_ages)

# # Identify and describe the Ruby method you implemented.
# The array deletion method checks for the "letter" and deletes all strings including it.
# then it returns the array without the letter.

#The hash deletion method also checks for the "letter" and deletes it if the letter is included.
#It then returns the hash without the letter.



# ################## DRIVER TEST CODE ###################################
# # HINT: Use `p` statements to see if you are altering the original structure with these methods.
# # Each of these should return `true` if they are implemented properly AND you have the code for each of the methods.

# # Person 1
 p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
 p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]

# # Person 2
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# # Person 3
# # This driver code will only pass if you have the code from Person 2! If you don't have it, copy/modify it so you can
# # test whether your method works.

# # The numbers were converted to strings because of the method I used when I made this.
# # You don't have to do this in the exact same way, just make sure to write your own
# # test if you are going to do it differently and give that to your group.

 p my_array_sorting_method(i_want_pets) == [3, 4, "I", "but", "have", "only", "pets", "want"]
 p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 0], ["Ditto", 3], ["Hoobie", 3], ["Poly", 4], ["Bogart", 4], ["Evi", 6], ["George", 12]]

# # Person 4
# # This driver code will only pass if you have the code from Person 2!If you don't have it, copy/modify it so you can
# # test whether your method works.
# # This may be false depending on how your method deals with ordering the animals with the same ages.
 p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "only", 3 ]
 p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}



# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 4: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #
