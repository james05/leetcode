# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  hash = {}
  # Key: Index where character will belong, value: character

  indices.each do |index|
    char_to_move = s[index]
    new_location = indices[index]

    char_to_overwrite = s[new_location]

    hash[new_location] = char_to_move
  end

  # sort hash by keys then we can overwrite s in the
  # correct order
  hash.sort_by { |k, v| k }.each do |pair|
    s[pair[0]] = pair[1]
  end

  s
end

puts restore_string("codeleet", [4, 5, 6, 7, 0, 2, 1, 3])
puts restore_string("codeleet", [4, 5, 6, 7, 2, 0, 1, 3])
puts restore_string("art", [1, 0, 2])

# Expected:
# "leetcode"
# "eeltcode"

# Process to take:
# in a hash table record as the key, the location of where the character will move to
# We do this since we cannot easily overwrite the string in-line as we will lose
# the location of characters.
# Then we sort the hash table by keys and then we can overwrite the 
# string by using key as index to overwrite and the value as the character
# to store in the index given by the key.
