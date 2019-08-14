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

  def memberships
    Membership.all.select{|member| member.gym == self}
  end

  def lifters
    memberships.map{|member| member.lifter}
  end

  def lifter_names
    memberships.map{|member| member.lifter.name}
  end

  def lift_total
    memberships.sum{|member| member.lifter.lift_total}
  end

end
