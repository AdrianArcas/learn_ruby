def shout(str)
    return str.upcase
end

def echo(str)
    str
end


def repeat(str, times=2)
        temp = str
    for _ in 1..times-1
        str = str + " " + temp
    end
    return str
end

def start_of_word(str,n)
    return str[0, n]
end

def first_word(str)
    str.split()[0]
end

def titleize(str)
    words = str.split()
    str = ""
    little_words= ["and","the","over"]

    for i in 0..words.length-1

        if  little_words.include? words[i] and i!=0
            str = str + words[i] + " "
        else 
            str = str + words[i].capitalize + " "
        end 
    end
    return str.chop
end