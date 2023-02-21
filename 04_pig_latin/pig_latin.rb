def translate(sentence)
  sentence.split.map { |word| translate_word(word) }.join(" ")
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

def vowel_outside_phonemes(vowel_index, phonemes_intervals)
  phonemes_intervals.each do |interval|
    if vowel_index >= interval[0] and vowel_index <= interval[1]
      return false
    end
  end
  true
end

def translate_word(word)

  cap = false
  if word == word.capitalize
    cap = true
  end

  phonemes_intervals = phonemes_intervals(word)
  curr_vowel_index = first_vowel_after_index(word, 0)

  while true
    if vowel_outside_phonemes(curr_vowel_index, phonemes_intervals)

      if curr_vowel_index == 0
        str_till_vowel = ""
      else
        str_till_vowel = word[0..curr_vowel_index - 1]
      end
      str_after_vowel = word[curr_vowel_index..-1]
      word.replace str_after_vowel + str_till_vowel
      break
    else
      curr_vowel_index = first_vowel_after_index(word, curr_vowel_index + 1)
    end
  end

  word.downcase
  word << "ay"

  if cap
    word.capitalize
  else
    word
  end
end

puts translate("the Quick brown Fox")

