class Lifter
  attr_reader :name, :lift_total
  
  @@lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@lifters << self    
  end

  def self.all
    @@lifters
  end

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    memberships.map{|membership| membership.gym }
  end

  def self.average_lift_total
    all.sum{|lifter| lifter.lift_total } / all.count.to_f
  end

  def memberships_cost
    memberships.sum{|membership| membership.cost }
  end

  def sign_membership(gym, cost)
    Membership.new(cost, self, gym)
  end


end
