class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total.to_f
    @@all << self 
  end

  def self.all 
    @@all 
  end 

  # Get a list of all the memberships that a specific lifter has

  def lifter_memberships 
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def lifter_gyms
    self.lifter_memberships.map {|membership| membership.gym}
  end 

  def self.avg_lift_total 
    lifts = self.all.map {|lifter| lifter.lift_total}
    lifts.sum/lifts.count
  end 

  def total_mem_cost 
    self.lifter_memberships.map {|membership| membership.cost}.sum 
  end 


# Given a gym and a membership cost, sign a specific lifter up for a new gym

  def new_gym_signup(gym, cost)
    Membership.new(self, gym, cost)
  end 

end

# Get a list of all lifters XXXX

# Get a list of all the memberships that a specific lifter has XXX

# Get a list of all the gyms that a specific lifter has memberships to XXX

# Get the average lift total of all lifters XXX

# Get the total cost of a specific lifter's gym memberships XXX

# Given a gym and a membership cost, sign a specific lifter up for a new gym XXX

