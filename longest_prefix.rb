strs = ["flower","flow","flight"]

prefix = strs[0]
j = 1

while j < strs.length
  i = 0
  longest_prefix = ""
  while i < prefix.length && i < strs[j].length
    if prefix[i] == strs[j][i]
      longest_prefix = longest_prefix + strs[j][i]
    else
      break
    end
    i = i + 1
  end
  prefix = longest_prefix

  if prefix.empty?
    return ""
  end

  j = j + 1
end

puts prefix