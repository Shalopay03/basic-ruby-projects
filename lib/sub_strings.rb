def substrings(string, dictionary)
  string.downcase!
  dictionary.each_with_object(Hash.new(0)) do |element, result|
    result[element] = string.scan(element).count if string.include? element
  end
end

dictionary = %w[below down go going horn how howdy it i low
                own part partner sit]

puts 'Dictionary:'
p dictionary

puts 'Test 1: '
string = 'below'
puts "String: #{string}"
puts 'Result: '

p substrings(string, dictionary)

puts 'Test 2: '
string = "Howdy partner, sit down! How's it going?"
puts "String: #{string}"
puts 'Result: '
p substrings(string, dictionary)
