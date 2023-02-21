def shout(str)
    str.upcase
  end
  
  def echo(str)
    str
  end
  
  def repeat(str, times=2)
    temp = str
    (times-1).times{
      str = str + " " + temp
      #str << " " + temp
      #De ce nu merge?
      #pare ca in momentul cand se face loop-ul se actualizeaza si parametrul temp . De ce?
    }
    str
  end
  
  def start_of_word(str,n)
    str[0, n]
  end
  
  def first_word(str)
    str.split()[0]
  end
  
  def titleize(str)
    little_words= ["and","the","over"]
  
    str.split.map.with_index do|word,i|
      if (!little_words.include?word) || i==0
        word.capitalize
      else
        word
      end
    end.join(" ")
  end