def caesar_cypher(string, key)

    charArray=string.split('')
    #charArray.each {|char| puts char + " in ascii: " + (char.ord+key).chr}
    charArray.map! do |char|
        #puts ("a".."z").to_a
        if ("a".."z").to_a.include?(char) or ("A".."Z").to_a.include?(char)
            char_ascii=char.ord+key
            #puts " test " 
            #puts char + " test " + char_ascii.to_s

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