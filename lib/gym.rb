class Gym
  attr_reader :name

  @@gyms = []

  def initialize(name)
    @name = name

    @@gyms << self
  end

  def self.all
    @@gyms
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self }
  end

  def lifters
    memberships.map{|membership| membership.lifter }.uniq
  end

  def lifters_names
    lifters.map{|lifter| lifter.name }
  end

  def combined_lift_total
    lifters.sum{|lifter| lifter.lift_total }
  end

end
