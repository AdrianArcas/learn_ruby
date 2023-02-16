def translate(sentence)
vowels = ['a','e','i','o','u','A','E','I','O','U']

words = sentence.split()
sentence = ""
for word in words
    
    if not vowels.include?(word[0]) 
       while not vowels.include?(word[0]) or (word[0]=='u' and word[-1]=='q')
            word << word[0] 
            delete_first_char(word)
       end
    end
    word << "ay"
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