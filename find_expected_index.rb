puts "Problem: Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order."

# Prompt user for the desired length of the array
puts "Enter the desired length of the array:"
n = gets.chomp.to_i
array = []

puts "Enter #{n} integers:"
# Collect the array elements from user input
n.times do
  array << gets.chomp.to_i
end

# Sort the array
sorted_array = array.sort
puts "Original array: #{array}"
puts "Sorted array: #{sorted_array}"

# Prompt user for the target value
puts "Enter the target value:"
target = gets.chomp.to_i

# Perform binary search to find the target or insertion position
low = 0
high = sorted_array.length - 1

while low <= high
  mid = (low + high) / 2
  if sorted_array[mid] == target
    puts "Target found at index: #{mid}"
    exit
  elsif sorted_array[mid] < target
    low = mid + 1
  else
    high = mid - 1
  end
end

# If the target is not found, `low` indicates the insertion position
puts "Target not found. It would be inserted at index: #{low}"
