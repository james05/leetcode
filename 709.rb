# @param {String} str
# @return {String}
def to_lower_case(str)
  conversion_factor = -1 * 'A'.ord + 'a'.ord

  str.each_char.with_index do |char, index|
    if char >= 'A' && char <= 'Z'
      str[index] = (char.ord + conversion_factor).chr
    end
  end
end
