# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #sum = 0
  #arr.each { |i| sum += i }
  #sum
  
  arr.reduce 0, :+
end

def max_2_sum arr
  #sum(arr.sort.reverse[0..1])
  #sum arr.sort{ |item1, item2| item2 <=> item1 }[0..1]
  sum arr.sort.pop(2)
end

def sum_to_n? arr, n
  #arr.combination(2).each {|c| return true if (c[0] + c[1]) == n }
  #false
  
  if arr.length >= 2
    sumTo = Hash.new(0)
    arr.each { |elem| sumTo[n - elem] += 1 }
    
    arr.each { |elem| return true if sumTo.key?(elem) && (elem * 2 != n || sumTo[elem] > 1) } 
  end
  
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z && [^aeiou]]/i
end

def binary_multiple_of_4? s
  s =~ /^([01]+00|0)$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN must have a non-empty value") if isbn.empty? 
    raise ArgumentError.new("Price must be non-zero and positive") if price <= 0
    
    @isbn =  isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end
