def caesar_cypher(string, key)

    charArray=string.split('')
    charArray.map! do |char|
        if ("a".."z").to_a.include?(char) or ("A".."Z").to_a.include?(char)
            char_ascii=char.ord+key
            if (char==char.upcase and char_ascii>90) or
                (char!=char.upcase  and char_ascii>122)
                

                char_ascii=char_ascii-26 

            elsif char==char.upcase and char_ascii<65 or
                char!=char.upcase and char_ascii<97

                char_ascii=char_ascii+26

            end

            
            char = char_ascii.chr
            char
        else
           
            char
        end


    end

    string=charArray.join("")
    string
end

puts "Enter string you want to cypher:"
string = gets 

puts "Enter key:"
key = gets


puts caesar_cypher(string, key.to_i)