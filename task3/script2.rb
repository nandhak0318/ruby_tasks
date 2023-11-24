require './script1.rb'
class SCalc
    include Calc
end

obj = SCalc.new
puts obj.add(4,3)