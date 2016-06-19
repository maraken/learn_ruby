def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(x)
	sum = 0
	x.each do |d|
		sum += d
	end
	sum
end

def multiply(*x)
	x.inject(1){|result, ele| result *= ele}
end
