# methods
def factorial(n)
    if n == 0 || n == 1
      return 1
    else
      return n * factorial(n - 1)
    end
  end
  
def palindrome(str)
		if str == str.reverse
			return true
		else
			return false
		end
	end


puts factorial(5)  
puts factorial(0)  
puts factorial(1)  

puts palindrome('bob')
puts palindrome('ball')
  