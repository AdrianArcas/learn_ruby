def translate(sentence)
  sentence.split.map { |word| translate_word(word) }.join(" ")
end

def translate_word(word)
  cap = (word == word.capitalize) ? true : false
  curr_vowel_index = first_vowel_after_index(word, 0)

  until outside_phonemes?(curr_vowel_index, word)
    curr_vowel_index = first_vowel_after_index(word, curr_vowel_index + 1)
  end

  str_till_vowel = word[0..curr_vowel_index - 1]
  str_after_vowel = word[curr_vowel_index..-1]

  word.replace curr_vowel_index==0 ? str_after_vowel : str_after_vowel + str_till_vowel

  word.downcase
  word << "ay"

  if cap
    word.capitalize
  else
    word
  end
end

def phonemes_intervals(word)
  phonemes = %w[qu sch Qu Sch]
  phonemes_intervals = []

  phonemes.each do |phoneme|
    phoneme_index = word.index(phoneme)

    if phoneme_index
      phonemes_intervals.append([phoneme_index, phoneme_index + phoneme.length - 1])
    end

  end
  phonemes_intervals
end

def first_vowel_after_index(word, starting_index)

  vowels = %w[a e i o u A E I O U]
  word[starting_index..-1].split("").each.with_index(starting_index) do |letter, i|
    return i if vowels.include?(letter)
  end

end

def outside_phonemes?(vowel_index,word)
  phonemes_intervals(word).each do |interval|
    if vowel_index >= interval[0] and vowel_index <= interval[1]
      false
      return
    end
  end
  true
end
