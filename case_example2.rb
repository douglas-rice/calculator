# Given the munsters hash below:

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has 
# an additional "age_group" key that has one of three values 
# describing the age group the family member is in (kid, adult, 
  # or senior). Your solution should produce the hash below:

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
 "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

  # Note: a kid is in the age range 0 - 17, an adult is in the 
  # range 18 - 64 and a senior is aged 65+.

  # hint: try using a case statement along with Ruby Range objects 
  # in your solution.

def grouping(age)
  case age
  when 0..17
    age_group = "kid"
  when 18..64
    age_group = "adult"
  else
    if age >= 65
      age_group = "senior"
    else
      age_group = "zombie"
    end
  end
  return age_group 
end

#initial solution:

# munsters.each do |name, details|
#   details["age_group"] = grouping(details["age"])
# end

# puts munsters

# solution with more descriptive iterating method:

munsters.values.each do |family_member|
  family_member["age_group"] = grouping(family_member["age"])
end

puts munsters


# note: this had a higher degree of difficulty because the values in the hash
# where themselves a hash.  So the iteration deals completely with the values
# and not the keys.

# note: I wrote the case statement and then did a test scenario with on single
# munster and got it to work.  It was a little tricky getting the syntax of the 
# argument, but after that I could simply adapt it to the .each loop using
# the values iterator named 'details'.