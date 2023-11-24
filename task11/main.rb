class Main
    def mainspeak
        puts "this is from main class"
    end
end

class Sub < Main
    def subspeak
        puts "this is from sub"
    end
end

class Sub2 < Main
    def subspeak
        puts "this is from sub"
    end
end

obj = Sub.new
obj2 = Sub2.new

obj.mainspeak
obj2.mainspeak