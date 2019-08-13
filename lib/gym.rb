class Gym
  attr_reader :name
  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def get_lifters
    #to a SPECIFIC gym - assume this means an instance?
    get_memberships.map{|membership| membership.lifter }.uniq
  end

  def get_names_of_lifters
    #get the names - use the instance return above to do the below
    get_lifters.map{|lifter| lifter.name }.join(", ")
  end

  def combined_lift_total
    get_lifters.map{|lifter| lifter.lift_total }.reduce(:+)
  end

end
