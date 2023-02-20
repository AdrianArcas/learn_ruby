NON_CAPITAL_WORDS = %w[a the an] + %w[for and nor but or yet] + %w[above across against along among around at before behind
below beneath beside between by down from in into near of off on to toward under upon with]

class Book
  def title=(title)

    @title = title.split.map.with_index {|word,i|
      unless NON_CAPITAL_WORDS.include? word and i!=0
        word.capitalize
      else
        word
      end }.join(" ")
  end

  def title
    @title
  end
  
end