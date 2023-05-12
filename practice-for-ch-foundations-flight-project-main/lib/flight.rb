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
    if (passenger.has_flight?(@flight_number) && !full?)
      @passengers << passenger
    end
  end

  def list_passengers
    passenger_names = []
    @passengers.each do |passenger|
      passenger_names << passenger.name
    end
    return passenger_names
  end

  def [](number)
    return @passengers[number]
  end

  def <<(passenger)
    board_passenger(passenger)
  end


end
