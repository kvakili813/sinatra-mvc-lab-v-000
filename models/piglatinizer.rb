class PigLatinizer

  def piglatinize(word)
      #return word if %w[and an in].include?(word)
      letters = word.split("")
      letters.keep_if {|letter| letter != "."}
      if letters.size > 1

        until vowel?(letters[0])
          letters << letters.shift
          letters  << "ay"
        end
      elsif letters.size == 1
        letters << "way"
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
      letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
    end

end
