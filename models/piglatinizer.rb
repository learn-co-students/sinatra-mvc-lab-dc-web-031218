class PigLatinizer
	VOWELS = ['a', 'e', 'i', 'o', 'u', 
			  'A', 'E', 'I', 'O', 'U']

	#Adapted from:
	#https://stackoverflow.com/questions/18857300/the-pig-latin-translation
	def piglatinize(str)
		word_arr = str.split(" ")
		word_arr.each do |word|
			#If word begins with vowel
			if VOWELS.include?(word[0..0])
				word << "way"
			else 
				until VOWELS.include?(word[0..0])
					word << "#{word[0..0]}"
					word[0..0] = ""
				end
				word << "ay"
			end
		end
		word_arr.join(" ")
	end
end