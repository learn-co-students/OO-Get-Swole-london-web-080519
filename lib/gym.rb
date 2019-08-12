class Gym
  attr_reader :name,:members, :lifter, :lift_total

  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map {|membership| membership.lifter}
  end 

   def lifter_names
    self.lifters.map {|member|member.name}
  end

  def combined_weight 
    self.lifters.map {|lifter| lifter.lift_total}.sum
  end 


end
