class Lifter
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym}
  end

  def self.total_lifted
    @@all.map{|lifter| lifter.lift_total}.sum
  end

  def self.average_lift
    total_lifted.to_f / @@all.count
  end

  def cost_of_memberships
    memberships.map{|membership| membership.cost}.sum
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end
end
