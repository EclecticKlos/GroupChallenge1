# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
            "Annabelle" => 0, "Ditto" => 3}

#********************************* ARRAY FINDING METHOD *********************************

# Person 1's solution
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
#Iterates over hash for value match
#Places keys of matching values in an array
#Returns array


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

# # Person 2
# def my_array_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# def my_hash_modification_method(source, thing_to_modify)
#   # Your code here!
# end

# # Identify and describe the Ruby method you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   # Your code here!
# end

# def my_hash_sorting_method(source)
#   # Your code here!
# end

# # Identify and describe the Ruby method you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# def my_hash_deletion_method(source, thing_to_delete)
#   #Your code here!
# end

# # Identify and describe the Ruby method you implemented.
# #
# #
# #


# ################## DRIVER TEST CODE ###################################
# # HINT: Use `p` statements to see if you are altering the original structure with these methods.
# # Each of these should return `true` if they are implemented properly AND you have the code for each of the methods.

# # Person 1
 p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
 p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]

# # Person 2
# p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "only", "have", 3 ]
# p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# # Person 3
# # This driver code will only pass if you have the code from Person 2! If you don't have it, copy/modify it so you can
# # test whether your method works.

# # The numbers were converted to strings because of the method I used when I made this.
# # You don't have to do this in the exact same way, just make sure to write your own
# # test if you are going to do it differently and give that to your group.

# p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
# p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]

# # Person 4
# # This driver code will only pass if you have the code from Person 2!If you don't have it, copy/modify it so you can
# # test whether your method works.
# # This may be false depending on how your method deals with ordering the animals with the same ages.
# p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "only", 3 ]
# p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}



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
