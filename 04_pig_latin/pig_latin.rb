def translate(phrase)
	vowels = ["a","e","i","o","u"]
	str = ''

	phrase.split().each do |word|
		if vowels.index( word[0] ) != nil
			str += word + 'ay '
		elsif vowels.index( word [0] ) == nil and vowels.index( word[1] ) == nil and vowels.index( word[2] ) == nil
			str += word[3..word.size-1] + word[0..2] + 'ay '
		elsif vowels.index( word [0] ) == nil and vowels.index( word[1] ) == nil
			str += word[2..word.size-1] + word[0..1] + 'ay '
		else
			str += word[1..phrase.size-1] + word[0] + 'ay '
		end
	end
	str.rstrip
end