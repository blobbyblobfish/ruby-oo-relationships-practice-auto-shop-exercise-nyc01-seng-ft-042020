require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


tahoe = Car.new("Chevy", "Tahoe", "Pickup")
bus = Car.new("School Bus", "Bluebird", "Bus")
little_horse = Car.new("Honda", "Accord", "Standard")
puma = Car.new("Jaguar", "Puma", "Sports")

ted = CarOwner.new("Ted")
alice = CarOwner.new("Alice")

chris = Mechanic.new("Chris", "Pickup")
olivier = Mechanic.new("Olivier", "Sports")
erhan = Mechanic.new("Erhan", "Standard")
randy = Mechanic.new("Randy", "Bus")

CarOwner.all # => [ted, alice]
Mechanic.all #=> [chris, olivier, erhan, randy]
Car.all # => [tahoe, bus, puma, little_horse]
Car.classifications # => ["Pickup", "Bus", "Standard", "Sports"]
Car.find_mechanic("Pickup") # => chris

ted.buy_car(tahoe)
ted.buy_car(bus)
alice.buy_car(puma)
# alice.buy_car(little_horse)
CarOwner.average_number_of_cars

tahoe.mechanic = chris
bus.mechanic = randy
little_horse.mechanic = erhan
puma.mechanic = olivier

ted.cars
ted.mechanics

alice.cars
alice.mechanics

olivier.cars
olivier.car_owners
olivier.car_owner_names

binding.pry

