class PigLatinizer

    attr_accessor :text

    def is_vowel(c)
        c.downcase.match(/a|e|i|o|u/) 
    end

    def piglatinize(text)
        words = text.split(" ")
        words.map do |word|
            if word[0].downcase.match(/a|e|i|o|u/)
                word = word + "way"
            elsif !is_vowel(word[0]) && !is_vowel(word[1]) && !is_vowel(word[2])
                word = word + word[0..2]
                word = word[3..-1] + "ay"
            elsif !is_vowel(word[0]) && !is_vowel(word[1])
                word = word + word[0..1]
                word = word[2..-1] + "ay"

            else
                word = word + word[0]
                word = word[1..-1] + "ay"
            end
            word
        end.join(" ")
    end
end