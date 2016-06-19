class Book
	attr_reader :title

	def title=(newTitle)
		newTitle =
			newTitle.split().map.with_index do |str, index| 
				if ['and', 'in', 'of', 'the', 'a', 'an'].index(str) == nil or index == 0
					str.capitalize
				else
					str
				end
			end.join(" ")

		@title = newTitle
	end
end
