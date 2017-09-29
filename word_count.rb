file_name = ARGV[0] #"./tmp.txt"
if file_name == nil
  puts "There is no argument"
  return
end

# File.open(file_name, 'r') do |file_handle|
#   str = file_handle.read
#   number_lines = str.lines.size # str.split("\n").size
# end

file_content = File.read(file_name)
puts file_content.lines.size # count number of lines
puts file_content.split.size # count number of words
puts file_content.length # count number of characters
