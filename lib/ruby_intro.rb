# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
	return 0
  else
	sum = 0
	for i in arr
		sum += i
	end
	return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
	return 0
  elsif arr.length == 1
	return arr[0]
  else
	arr.sort!
	return(arr[arr.length - 1] + arr[arr.length - 2])
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
	return false
  else
	for i in arr
	j = i + 1
	while j < arr.length
		if i + j == n
			return true
		end
	end
	end
	return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, " + name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0] == 'a' || s[0] == 'A' || s[0] == 'e' || s[0] == 'E' || s[0] == 'i' || s[0] == 'I' || s[0] == 'o' || s[0] == 'O' || s[0] == 'u' || s[0] == 'U'
    return false
  else
	return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if ((s.to_i(2) % 4) == 0)
	return true
  else
	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
	def initialize isbn, price
		if isbn.empty? || price <= 0 
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end
	
	def price_as_string
		format("$%.2f", @price)
	end
end
