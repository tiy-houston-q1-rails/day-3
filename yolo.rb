class Yolo

  def initialize
    @yoloed = true
  end

  def stuff
    yoloed = false
    puts @yoloed
  end

end

yolo = Yolo.new
yolo.stuff
