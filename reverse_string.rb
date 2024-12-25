# Reverse of String
str = gets.chomp.to_s
str1 = str.gsub(/\s+/,"")
puts str1.length

i = 0
j = str1.length - 1
puts j

while i <= j do
  t = str1[i]
  str1[i] = str1[j]
  str1[j] = t
  i = i + 1
  j = j - 1
end

puts str1.split.join('')
