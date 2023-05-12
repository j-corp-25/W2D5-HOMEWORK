require "passenger"


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

  def board_passenger(passenger)
    if (passenger.has_flight?(@flight_number)
      @passengers << self.passenger(passenger)
    end

  end





end
