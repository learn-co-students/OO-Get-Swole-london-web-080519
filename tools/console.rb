# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Globo Gym")
gym2 = Gym.new("Average Joe's Gymnasium")
gym3 = Gym.new("Pure Gym")

lifter1 = Lifter.new("'Pirate' Steve", 85)
lifter2 = Lifter.new("White Goodman", 92)
lifter3 = Lifter.new("Blade", 102)
lifter4 = Lifter.new("Lazer", 105)
lifter5 = Lifter.new("Blazer", 120)


m1 = Membership.new(25, lifter1, gym2)
m2 = Membership.new(90, lifter2, gym1)
m3 = Membership.new(90, lifter3, gym1)
m4 = Membership.new(90, lifter4, gym1)
m5 = Membership.new(90, lifter5, gym1)
m6 = Membership.new(90, lifter1, gym1)




binding.pry

puts "Gains!"
