require 'pry'
class PigLatinizer

  def piglatinize(word)
    binding.pry
    #differentiate between multiple words or one word
    #if one word continue as is
    #if multiple words
      #.split(" ")

      #return word if %w[and an in].include?(word)
      letters = word.split("")
      letters.keep_if {|letter| letter != "."}

      if letters.size == 1 || vowel?(letters[0])
        letters << "way"
      elsif letters.size > 1

        until vowel?(letters[0])
          letters << letters.shift
        end
        letters  << "ay"

      end
      letters.join
    end

     def to_pig_latin(text)
      words = text.split(" ")
      words.map! {|word| piglatinize(word)}
      words.join(" ")
    end

     def vowel?(letter)
      letter.downcase
      letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u" || letter == "E" || letter == "I"
    end

end
