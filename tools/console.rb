# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

goldsgym = Gym.new(name: "Gold's Gym")
puregym = Gym.new(name: "Puregym")
virgin = Gym.new(name: "Virgin")

hulk = Lifter.new(name: "Inredible Hulk", lift_total: 500)
superhans = Lifter.new(name: "Super Hans", lift_total: 2)
ben = Lifter.new(name: "Super Ben", lift_total: 50)
erin = Lifter.new(name: "Erin", lift_total: 10)

gold_plan_to_golds_gym = Membership.new(cost: 500, plan_name: "Gold Plan", gym: goldsgym, lifter: erin)
superhans_puregym_membership = Membership.new(cost: 30, plan_name: "Easy Breezy", gym: puregym, lifter: superhans)
erins_virgin_membership = Membership.new(cost: 50, plan_name: "Basic Virgin Gym Membership", gym: virgin, lifter: erin)
bens_puregym_membership = Membership.new(cost: 45, plan_name: "Upgrade Puregym", gym: puregym, lifter: ben)


binding.pry

puts "Gains!"
