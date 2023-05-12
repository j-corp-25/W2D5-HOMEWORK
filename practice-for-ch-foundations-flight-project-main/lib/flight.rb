class Flight
  def initialize(string,number)
    @flight_number = string
    @capacity = number
    @passengers = []
  end

  def passengers
    return @passengers
  end

  def full?
    if @passengers.length == @capacity
      return true
    elsif @passengers.length < @capacity
      return false
    end
  end

  def board_passenger(new_passenger)
    
    if self.(new_passenger).include?(@flight_number)
      @passengers << new_passenger






end
