# tr (translate or transliterate) is a common shell program used to
# replace certain characters in a string with others
def tr(from, to, str)
  # size of from and to strings should be equal
  if (from.length != to.length)
    return str
  end

  #create Hash, from chars are keys, to chars are values
  translate = Hash.new
  (0..from.size-1).each do |i|
    translate[from[i]] = to[i]
  end

  # str.each_char do |char|
  #   if (translate.key?(char))
  #     output << translate[char]
  #   else
  #     output << char
  #   end
  # end
  # puts output

  #modify str in-place
  (0..str.size-1).each do |i|
    if (translate.key?(str[i]))
      str[i] = translate[str[i]]
    end
  end
  puts str
end

#tr("abc","123","dcba") => "d321"
tr("abc","123","dcba")
#tr("abc","123","LOBSTER") => "LOBSTER"
tr("abc","123","LOBSTER")
#tr("123", "abc", "bad") => "bad"
tr("123", "abc", "bad")
#tr("1a","a1","aax11") => "11xaa"
tr("1a","a1","aax11")
