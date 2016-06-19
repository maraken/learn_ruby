def translate(phrase)

	phrase.split().map do |word|
		word =~ /^
			(
				[^aeiouq]*
				(qu)?
			)
			(.*)
			$/x
		first_phoneme = $1
		second_phoneme = $3
		"#{second_phoneme}#{first_phoneme}ay"
	end.join(" ")
	
end