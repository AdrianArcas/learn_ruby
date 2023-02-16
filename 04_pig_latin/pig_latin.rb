def translate(sentence)
vowels = ['a','e','i','o','u','A','E','I','O','U']

words = sentence.split()
sentence = ""
for word in words
    cap = false

    if word == word.capitalize
        cap=true
    end

    if not vowels.include?(word[0]) 
       while not vowels.include?(word[0]) or ((word[0]=='u' or word[0]=='U') and (word[-1]=='q' or word[-1] == 'Q'))
            word << word[0] 
            delete_first_char(word)
       end
    end
    word= word.downcase
    word << "ay"

    if cap
    word=word.capitalize
    end
    cap=false
    
    sentence << word + " "
    
end
return sentence.rstrip
end

def delete_first_char(str)
    for i in 0..str.length-2
        str[i] = str [i+1]
    end
    str.replace(str.chop)
end