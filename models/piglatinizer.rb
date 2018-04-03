class PigLatinizer
  attr_reader :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(text)
    #binding.pry
    words = text.split(" ")
    piglatin_array = words.map do |word|
      if word.length > 1
        split_word = word.split(/([AEIOUaeiou].*)/)
        if split_word[0].length == 0
          split_word[1] + "way"
        else
          piglatin = split_word[1] + split_word[0] + "ay"
        end
      else
        word + "way"
      end
    end
    piglatin_array.join(" ")
  end
end
