def substrings (string, dictionary)
    string.downcase!
    dictionary.reduce(Hash.new(0)) do |result, element|
        if string.include?element
            result[element]=string.scan(element).count 
        end
        result
    end
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
    "own","part","partner","sit"]


puts "Dictionary:"
p dictionary

puts "Test 1: "
string = "below"
puts "String: " +  string
puts "Result: "

p substrings(string, dictionary)

puts "Test 2: "
string = "Howdy partner, sit down! How's it going?"
puts "String: " +  string
puts "Result: "
p substrings(string, dictionary)