class Lifter
  attr_reader :name, :lift_total, :cost, :memberships
  attr_accessor :members

  @@all = []
  def initialize(name, lift_total)
    @membership_costs = 0
    @name = name
    @lift_total = lift_total.to_f
  end

  def self.all 
    @@all 
  end 

  def self.lift_totals
    @@lift_totals 
  end 

  def memberships
    Membership.all.select{|member|member == self}
  end

  def self.average_lift_total 
    self.all.map{|total|lift_total.sum}
  end

  def membership_cost 
    @membership_costs 
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
    @membership_costs += cost
  end 



end
