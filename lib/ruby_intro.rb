# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    arr.sum
end

def max_2_sum arr
  if arr.length == 0
      return 0
  end   
  arr.max(2).reduce(:+)
  
end

def sum_to_n? arr, n
pairs = arr.combination(2).select { |x, y| x + y == n }
if pairs.empty?
    return false
  else
    return true
end

end

# Part 2

def hello(name)
  s = "Hello, " + name
  return s
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if /\A[-+]?\d+\z/.match(s)==nil
    return false
  else
    if (s.to_i % 4) == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  
  def initialize(isbn,price)
        @isbn = isbn
        @price = price
        
        if isbn == ""
          raise ArgumentError.new("expect isbn to not be empty")
        elsif (price == 0)
          raise ArgumentError.new("price must not be zero")
        elsif (price < 0)
          raise ArgumentError.new("cannot have negative price")
        end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    sprintf("$%2.2f", @price)  
  end
  
end
