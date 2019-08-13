class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name:, lift_total:)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def sign_up(gym, membership_cost)
    Membership.new(cost: membership_cost, gym: gym, lifter: self)
  end

  def get_memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def my_membership_costs
    get_memberships.map{|membership| membership.cost}.reduce(:+)
  end

  
  def self.get_avg_lift_total
    lift_total = self.all.map{|lifter| lifter.lift_total}
    lift_total.reduce(:+) / lift_total.count.to_f
  end


end
