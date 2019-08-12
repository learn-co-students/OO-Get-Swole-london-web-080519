# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("paco", 250)
lifter2 = Lifter.new("luis", 200)
lifter3 = Lifter.new("manuel", 150)
lifter4 = Lifter.new("arnold", 350)

gym1 = Gym.new("swolen")
gym2 = Gym.new("ripped")
gym3 = Gym.new("power")

membership1 = Membership.new(100, gym1, lifter1)
membership2 = Membership.new(110, gym2, lifter2)
membership3 = Membership.new(120, gym3, lifter3)
membership4 = Membership.new(130, gym1, lifter4)
membership5 = Membership.new(140, gym2, lifter1)
membership6 = Membership.new(150, gym3, lifter2)

binding.pry

puts "Gains!"
