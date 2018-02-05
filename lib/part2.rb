require 'ruby_intro.rb'

###############################################################################################################################
#Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name. 
###############################################################################################################################

def hello(name)
  str1 = name
  str2 = "Hello, "
  str2.concat(str1)
end

#############################################################################################################################
#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false 
#otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper 
#and lower case and for nonletters.
###############################################################################################################################
def starts_with_consonant?(s)
  if s.empty?
    return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  elsif ( /[A-Z]/ =~ s[0].upcase && /[^AEIOU]/ =~ s[0].upcase)
    return true
  else
    return false
  end
end

###############################################################################################################################
#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is 
#a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number
###############################################################################################################################
def binary_multiple_of_4?(s)
  if s.empty?
    return false
  elsif (s) == "0"
    return true
  elsif (/^[01]*(00)$/ =~ s)
    return true
  else 
    return false
  end
end