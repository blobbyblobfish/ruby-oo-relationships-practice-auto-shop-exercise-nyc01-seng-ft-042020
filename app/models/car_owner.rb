class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
    @@all
  end

  def buy_car (car)
    car.owner = self
  end

  # Get a list of all the cars that a specific owner has
  def cars
    Car.all.select {|car| car.owner == self}
  end

  # Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map {|car| car.mechanic}
  end

    # Get the average amount of cars owned for all owners
    def self.average_number_of_cars
      Car.all.select {|car| car.owner != nil}.count / CarOwner.all.count.to_f
    end

end
