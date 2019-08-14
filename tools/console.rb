# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Oli", 50)
lifter2 = Lifter.new("Abdullah", 30)
lifter3 = Lifter.new("Tegan", 40)

gym1 = Gym.new("pure Gym")

gym2 = Gym.new("pure Gym2")
gym3 = Gym.new("pure Gym3")

member1 = Membership.new(40, lifter1, gym1)
member2 = Membership.new(40, lifter2, gym1)
member3 = Membership.new(40, lifter3, gym1)
member3 = Membership.new(40, lifter1, gym2)
lifter1.add_membership(gym3, 45)

binding.pry

puts "Gains!"
