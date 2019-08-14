class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    Gym.all.select{|gym| gym.name == self.name}
  end

  def self.average
    # all.map{|lifter| lifter.lift_total}.reduce(:+)
    all.sum{|lifter| lifter.lift_total} / all.count.to_f
  end

  def total_cost
    memberships.sum{|membership| membership.cost}
  end

  def add_membership(gym, cost)
    Membership.new(cost, self, gym)
  end
end
