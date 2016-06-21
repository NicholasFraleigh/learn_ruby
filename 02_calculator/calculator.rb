def add (a, b)
	a + b
end

def subtract (a, b)
	a - b
end

def sum (array)
	total = 0
	array.each do |i|
		total = total + i
	end
	total
end

def multiply (array)
	total = 1
	array.each do |i|
		total = total * i
	end
	total
end

def power(a, b)
	total = 1
	b.times do
		total = total * a
	end
	total
end

def factorial(a)
	if a == 0
		return 0
	end
	total = 1
	for i in 1..a
		total = total * i
	end
	total
end
