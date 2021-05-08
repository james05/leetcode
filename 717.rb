# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  while bits.length >= 2
    if bits[0] == 1
      # we have at least 2 characters
      # and the first digit is a 2, meaning we have a character 10 or 11
      bits.slice!(0..1)
    else
      # the first digit is a0, meaning we have a character 0
      bits.slice!(0)
    end
  end

  bits.length == 1
end

puts is_one_bit_character([1, 0, 0])
puts is_one_bit_character([1, 1, 1, 0])
puts is_one_bit_character([0, 0, 1, 0, 1, 1, 0]) # should be false
puts is_one_bit_character([0, 0, 1, 0, 1, 1, 0]) # should be true
puts is_one_bit_character([0, 0])
