class Timer
  #write your code here
  # getter and setter
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    # convert seconds to minutes
    @minutes = @seconds / 60
    # convert minutes to hours
    @hours = @minutes / 60
    # calculate minutes that are left after conversion to hours
    @minutes = @minutes % 60
    # calculate seconds that are left after conversion to minutes and hours
    @seconds = @seconds % 60 % 60

    # add padding to single digit numbers if there are any
    @hours = padded(@hours)
    @minutes = padded(@minutes)
    @seconds = padded(@seconds)
    return "#{@hours}:#{@minutes}:#{@seconds}"
  end

  # add 0 as padding to numbers less than 10
  def padded number
    if number < 10
      number = "0" + number.to_s
    end
    number.to_s
  end
end
