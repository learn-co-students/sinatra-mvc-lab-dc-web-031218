require 'pry'
class PigLatinizer

    def piglatinize(text)
      array = text.split(/(\.|\?|\,|\!|\ )/)

      letters = ('a'..'z').to_a
      vowels = ['a','e','i','o','u']
      consonants = letters - vowels


      array.map do |word|


        if word.downcase.start_with?(*letters)
            if word.downcase.start_with?(*consonants)

              cut = ""
              word.chars.each do |letter|
                if !vowels.include?(letter)
                  cut << word.slice!(0..word.index(letter))
                else
                  break
                end

              end
                word << cut
            elsif word.downcase.start_with?(*vowels)
              word << "w"
            end

            word << "ay"

        else
          word
        end


      end.join("")

    end

# puts piglatinize("Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo")
# puts piglatinize("hello, how are you ... doug")
# puts piglatinize("i love programming")

end
