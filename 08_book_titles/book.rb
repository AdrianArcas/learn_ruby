$non_capital_words = %w[a the an] + %w[for and nor but or yet] + %w[above across against along among around at before behind 
below beneath beside between by down from in into near of off on to toward under upon with]
class Book
    def title=(title)
      words=title.split
  
       words.map!{
        |word|
        unless $non_capital_words.include?(word)
        word.replace word.capitalize
        else
        word
        end
      }
  
      words[0].capitalize!
  
      @title = words.join(" ")
  
    end
    def title
      @title
    end
  end