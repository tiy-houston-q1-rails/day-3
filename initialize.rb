class CoffeeMaker
  attr_accessor :ready

  def initialize(is_ready)
    self.ready = is_ready
  end

  def brew!
    self.ready = false
    puts "brewing coffee"
    puts "...."
    puts "Ready!"
    self.ready = true
  end

end

maker = CoffeeMaker.new false

puts "ready? #{maker.ready}"
5.times { puts "" }
maker.brew!
puts "ready? #{maker.ready}"
