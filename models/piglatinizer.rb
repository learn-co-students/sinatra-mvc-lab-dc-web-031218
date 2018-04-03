class PigLatinizer
  attr_reader :words

  # def initialize(words)
  #   @words = words
  # end

  def piglatinize(words)
    # words = words.downcase
    word_arr = words.split(' ')
    pig_arr = []

    word_arr.map do |word|
      if word.length > 1
        splitter = word.split(/([aeiouAEIOU].*)/)
        if splitter[0].length == 0
          pig_arr << word + "way"
        else
          final_word = splitter[1] + splitter[0] + 'ay'
          pig_arr << final_word
        end
      else
        pig_arr << word + 'way'
      end

    end

    pig_arr.join(' ')
  end


end
