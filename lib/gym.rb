class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  def membership_to_gym
    Membership.all.select {|membership| membership.gym == self}
  end 

  def gym_lifters
    self.membership_to_gym.map {|membership| membership.lifter}
  end 

  def gym_lifters_name
    self.gym_lifters.map {|lifter| lifter.name}
  end 

  # Get the combined lift total of every lifter has a membership to that gym
  def lifter_combined_weight 
    self.gym_lifters.map {|lifters| lifters.lift_total}.sum
  end 




end

# Get a list of all gyms XXX

# Get a list of all memberships at a specific gym xxx

# Get a list of all the lifters that have a membership to a specific gym xx

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym