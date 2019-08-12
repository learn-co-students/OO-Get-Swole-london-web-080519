# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

bob = Lifter.new("Bob", 200)
joe = Lifter.new("Joe", 300)
heather = Lifter.new("Heather", 400)

soho_gym = Gym.new("Soho")
shoreditch_gym = Gym.new("Shoreditch")
brixton_gym = Gym.new("Brixton")

membership1 = Membership.new(bob, soho_gym, 100)
membership2 = Membership.new(joe, shoreditch_gym, 120) 
membership3 = Membership.new(heather, brixton_gym, 90)
membership4 = Membership.new(bob, shoreditch_gym, 120)
membership5 = Membership.new(joe, brixton_gym, 95)


binding.pry

puts "Gains!"
