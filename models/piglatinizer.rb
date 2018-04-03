class PigLatinizer
  attr_reader :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(word)
    text_array = word.split(" ")

    final_words = text_array.collect do |word|
      word_array = word.split("")
      if consonants_array.include?(word_array.first) && consonants_array.include?(word_array[1]) && consonants_array.include?(word_array[2])
        first_letter = word_array.shift
        second_letter = word_array.shift
        third_letter = word_array.shift
        word_array.push(first_letter).push(second_letter).push(third_letter)
        word_array.join + "ay"
      elsif consonants_array.include?(word_array.first) && consonants_array.include?(word_array[1])
        first_letter = word_array.shift
        second_letter = word_array.shift
        word_array.push(first_letter).push(second_letter)
        word_array.join + "ay"
      elsif consonants_array.include?(word_array.first)
        first_letter = word_array.shift
        word_array.push(first_letter)
        word_array.join + "ay"
      elsif vowels_array.include?(word_array.first)
        word_array.join + "way"
      end
    end

    final_words.join(" ")

  end

  private
  def consonants_array
    consonants_array = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("")
  end

  def vowels_array
    vowels_array = "aeiouAEIOU".split("")
  end

end
