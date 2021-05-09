# @param {Integer[]} nums
# @return {Integer[]}
def running_sum2(nums)
  result = [nums[0]]

  1.upto(nums.length - 1) do |index|
    # previous sum + new number
    result.push(result[-1] + nums[index])
  end

  result
end

# In-place replacement
def running_sum(nums)
  1.upto(nums.length - 1) do |index|
    # previous sum + new number
    nums[index] = nums[index - 1] + nums[index]
  end

  nums
end

puts running_sum([1, 2, 3, 4]).inspect
puts running_sum([1, 1, 1, 1, 1]).inspect
puts running_sum([3, 1, 2, 10, 1]).inspect
puts running_sum([5]).inspect
puts running_sum([5, 2]).inspect
