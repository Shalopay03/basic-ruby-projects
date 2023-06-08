# frozen_string_literal: true

def caesar_cypher(string, key)
  char_array = string.split('')
  char_array.map! do |char|
    if ('a'..'z').to_a.include?(char) || ('A'..'Z').to_a.include?(char)
      char_ascii = char.ord + key
      if ((char == char.upcase) && (char_ascii > 90)) ||
         ((char != char.upcase) && (char_ascii > 122))

        char_ascii -= 26

      elsif ((char == char.upcase) && (char_ascii < 65) ||
            (char != char.upcase)) && (char_ascii < 97)

        char_ascii += 26

      end

      char = char_ascii.chr
    end
    char
  end

  char_array.join('')
end

puts 'Enter string you want to cypher:'
string = gets

puts 'Enter key:'
key = gets

puts caesar_cypher(string, key.to_i)
