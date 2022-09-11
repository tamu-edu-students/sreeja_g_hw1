# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    return arr.sum
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    max1 = arr[-1]
    max2 = arr[-2]
    sum = max1 + max2
    return sum
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  dict = {}
  for i in 0..(arr.length-1)
    if dict.key?(arr[i])
      return true
    end
    dict[number-arr[i]] = i
  end
  return false
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  end
  arr = ["a", "e", "i", "o", "u"]
  first = string.to_s[0].downcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end

end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if not(string.is_a? Integer) and !(string =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  s = string.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if @price <= 0 or @isbn.empty? 
			raise ArgumentError
		end
	end

	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
end
