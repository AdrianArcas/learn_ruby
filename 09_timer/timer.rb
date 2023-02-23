class Timer

  attr_accessor :seconds

  def initialize()
    @seconds = 0
  end

  def time_string
    seconds = @seconds%60
    minutes = (@seconds/60)%60
    hours = (@seconds/3600)%60
    @time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(n)
    n < 10 ? "0#{n}" : "#{n}"
  end

end