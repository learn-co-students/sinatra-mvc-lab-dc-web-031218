class PigLatinizer
  attr_reader :words

  def initialize
    #binding.pry "boomer"
    #@words = params[:user_input]
  end

  def piglatinize(words)
    vowels = ["a", "e", "i", "o", "u", "E", "I", "O", "U"]
    string = words.split(" ")
    newString = []

    string.each do |w|
      if vowels.include?(w[0])
        newString << (w + "way")
      else
        until vowels.include?(w[0])
          w = w[1..-1] + w[0]
        end
        newString << (w + "ay")
      end
    end
    #string = words
    # if vowels.include?(string[0])
    #   string + "way"
    # else
    #   until vowels.include?(string[0])
    #     string = string[1..-1] + string[0]
    #   end
    #   string + "ay"
    # end
    newString.join(" ")
  end

  def original

  end

end
