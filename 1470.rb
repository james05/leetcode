def shuffle(nums, n)
  arr = []

   0.upto(n-1) do |i|
    arr << nums[i]
    arr << nums[i + n]
  end

  arr
end
