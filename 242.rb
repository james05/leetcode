# Link: https://leetcode.com/problems/valid-anagram/
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length

  count = Hash.new

  s.each_char do |character|
    if count[character].nil?
      count[character] = 0
    end
    count[character] = count[character] + 1
  end

  t.each_char do |character|
    return false if count[character].nil?

    count[character] = count[character] - 1
  end

  count.all? { |k, v| v == 0 }
end

# Solution:
# 1 - If s and t are different lengths, the answer is no
# 2 - Go through each character in s and increment a counter of that type of character
# 3 - Go through each character in t. If any character is not found in the counting map, the answer is not an anagram
# 4 - Otherwise, decrement the count for that character
# 5 - At the end if any of the counts is <> 0 then the result is not an anagram.

# Runtime here is O(n). A slight efficiency can be made by return false as soon as we find a character that goes < 0.

 is_anagram("carrat", "cara") # false
 is_anagram("cara", "carrat") # false
 is_anagram("arcc", "cccr") # false
 is_anagram("car", "rat") # false
 is_anagram("arc", "car") # true
 is_anagram("nagaram", "anagram") # true
 is_anagram("anagram", "nagaram") # true
 is_anagram("eksvpuvqjgygdqicyexdycubuyyalyebftxdtzrskniqjcklnb", "ykjykepkzuungvsybtvxnqqbdtaygdcqrdjyeclisyeicfblux")
