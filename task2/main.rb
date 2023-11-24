# class
class Calc
    def add(a,b)
        return a+b
    end
    def sub(a,b)
        return a-b
    end
    def multi(a,b)
        return a*b
    end
    def div(a,b)
        return a/b
    end
end


calculator = Calc.new

puts calculator.add(4,2)
puts calculator.sub(4,2)
puts calculator.multi(4,2)

class Person
    @@personCount = 0
    def initialize(name,age)
        @name = name
        @age = age
    end
    def get_age
        return @age
    end
    def get_name
        return @name
    end
end

person = Person.new('blah',3)
puts person.get_name()
puts person.get_age()