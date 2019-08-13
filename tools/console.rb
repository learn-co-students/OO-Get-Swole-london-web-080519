# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

will = Lifter.new("Will",lift_total = 800)
chris = Lifter.new("Chris",lift_total = 220)
arnie = Lifter.new("Arnie",lift_total = 1000)
the_rock = Lifter.new("Dwayne", lift_total = 1500)

virgin_active = Gym.new("Virgin Active")
fitness_first = Gym.new("Fitness First")
pure_gym = Gym.new("Pure Gym")
equinox = Gym.new("Equinox")
frame = Gym.new("Frame")

will.sign_up(equinox,500)
arnie.sign_up(fitness_first,350)
chris.sign_up(pure_gym,25)
the_rock.sign_up(virgin_active,100)


binding.pry

puts "Gains!"
