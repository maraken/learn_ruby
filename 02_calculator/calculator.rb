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

def power(x,y)
	x**y
end

def factorial(x)
	y = 1
	x.downto(1).each{|d|
		y *= d
	}
	y
end