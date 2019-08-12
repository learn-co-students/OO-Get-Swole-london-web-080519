# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

boris = Lifter.new("Boris", 50)
hulk = Lifter.new("Hulk", 120)
sam = Lifter.new("Sam", 20)
the_rock = Lifter.new("The Rock", 80)

get_fit = Gym.new("Get Fit")
titan_gym = Gym.new("Titan Gym")
brutal_gym = Gym.new("Brutal Gym")

membership1 = Membership.new(40, get_fit, boris)
membership2 = Membership.new(80, titan_gym, boris)
membership3 = Membership.new(100, brutal_gym, boris)
membership4 = Membership.new(40, get_fit, hulk)
membership5 = Membership.new(80, titan_gym, hulk)
membership6 = Membership.new(40, titan_gym, sam)
membership7 = Membership.new(100, brutal_gym, the_rock)

binding.pry

puts "Gains!"
