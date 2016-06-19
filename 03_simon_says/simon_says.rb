def echo(msg)
	msg
end

def shout(msg)
	msg.upcase
end

def repeat(msg, repeat=2)
	str = ''
	(repeat).times do
		str += msg + " "
	end
	str.rstrip
end

def start_of_word(msg, num_of_chars)
	msg[0..num_of_chars-1]
end

def first_word(msg)
	index_of_space = msg.index(' ')
	msg[0..index_of_space-1]
end

def titleize(msg)
	str = ''
	exclude = ['and', 'of', 'if', 'or', 'the', 'as', 'for', 'over']
	msg.split().each do |s|
		if str == '' or exclude.index(s) == nil
			str += s.capitalize + ' ' ;
		else
			str += s + ' ';
		end
	end
	str.rstrip
end