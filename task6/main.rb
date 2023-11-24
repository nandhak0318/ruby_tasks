# Fiber example
fiber_a = Fiber.new do
    3.times do |i|
      puts "Task A - Step #{i + 1}"
      Fiber.yield
    end
  end
  
  fiber_b = Fiber.new do
    3.times do |i|
      puts "Task B - Step #{i + 1}"
      Fiber.yield
    end
  end
  
  3.times do
    fiber_a.resume
    fiber_b.resume
  end