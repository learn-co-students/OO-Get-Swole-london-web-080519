class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # Get a list of all lifters
  def self.all
    @@all
  end

  # Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    memberships.map{|membership| membership.gym}
  end

  # Get the average lift total of all lifters
  def self.average_lift
    total_lifts = self.all.map{|lifter| lifter.lift_total}#.sum
    total_lifts.sum.to_f/total_lifts.size
  end

  # Get the total cost of a specific lifter's gym memberships
  def total_cost
    memberships.map{|membership| membership.cost}.sum
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def add_membership(cost, gym)
    Membership.new(cost, gym, self)
  end

end
