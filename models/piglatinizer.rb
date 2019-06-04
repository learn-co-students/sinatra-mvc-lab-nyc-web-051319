require 'pry'
class PigLatinizer

  def piglatinize(sentence)
    words = sentence.split(" ")
    new_words = []

    words.each do |word|
      new_words << piglatinize_word(word)
    end

    new_sentence = new_words.join(" ")
    new_sentence

  end

  def piglatinize_word(word)
    first_letter = word[0].downcase

    if ['a','e','i','o','u'].include?(first_letter)
      new_word = "#{word}way"
    else
      consonants = []
      consonants << word[0]

      letters = word[1..word.length].split("")

      stop = false

      while !stop do
        letters.each do |letter|
          if ['a','e','i','o','u'].include?(letter)
            stop = true
            break
          else
            consonants << letter
            stop = false
          end
        end
      end

      new_word = "#{word.slice(consonants.length..word.length-1) + consonants.join("") + "ay"}"
    end

    new_word
  end

end
