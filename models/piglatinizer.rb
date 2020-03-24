require 'pry'

class PigLatinizer

  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
      vowels.include?(word[0])
    end


      def piglatinize(word)
        if self.is_vowel?(word)
      	      word.concat('way')
      else
      	 word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
      end
    end


    #if the word starts with a vowel add yay to the end	  #if the word starts with a vowel add yay to the end
    #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end	  #if the word starts with consonant(s) add the consonants up to the next vowel and ay to the end
  def to_pig_latin(phrase)
    word_array = phrase.split(" ")
    #binding.pry
    word_array.collect{|word| piglatinize(word)}.join(" ")

  end
end
