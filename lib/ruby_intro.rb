# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each{ |x| total += x} 
  return total
end


def max_2_sum arr
    return 0 if arr.empty?
    return arr[0] if arr.length == 1
    
    # If the top two are the same, just multiply the max by 2
    newarr = arr.sort
    if newarr.last == newarr.at(-2)
      return newarr.last * 2
    end
    sum = 0
    sum += arr.max
    arr.delete(arr.max)
    sum+= arr.max
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.length == 1
  
  arr.combination(2).any? {|a, b| a + b == n}
  
end

# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  
  if /^[aeiou\d\W]/i.match(s)
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s

  if /^[01]/.match(s)
    b = s.to_i(2)
    if b%4 == 0
      return true
    else
      return false
    end
    
  else
    return false
  end

end

# Part 3

class BookInStock
 def initialize(isbn, price)
   # properties
   
    if isbn.length == 0
      raise ArgumentError
    end
  
    if price <= 0
      raise ArgumentError
    end
  
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    
  end
  

  
end
