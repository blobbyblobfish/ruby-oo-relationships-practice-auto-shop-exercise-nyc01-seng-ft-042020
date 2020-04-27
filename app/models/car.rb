class Car

  attr_reader :make, :model
  attr_accessor :owner, :mechanic

  @@all = []
  @@classifications = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@classifications << @classification
    Car.all << self
  end

  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.classifications
    @@classifications.uniq
  end

  # Get a list of mechanics that have an expertise that matches the passed in car classification
  def self.find_mechanic(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

end
