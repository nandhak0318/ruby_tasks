begin
    IO.sysopen('asdf')
rescue
    puts "can't find file"
end

class MyError < StandardError
    def initialize(msg=" ")
        super
    end
end

begin
    if 1==1
        raise MyError.new("1 is 1")
    end
rescue =>e
    puts e
end