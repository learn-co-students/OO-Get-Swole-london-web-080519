class Membership
  attr_reader :cost, :plan_name, :gym, :lifter
  @@all = []

  def initialize(cost:, plan_name:, gym:, lifter:)
    @cost = cost
    @plan_name
    @gym = gym
    @lifter = lifter
    @@all << self
  end

  def self.all
    @@all
  end

  
end
