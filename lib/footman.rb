# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

	attr_reader :health_points, :attack_power

  def initialize
  	super(60,10)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def damage(points)
  	@health_points -= points
  end

  def attack!(enemy)
  	if enemy.instance_of?(Barracks)
  		enemy.damage(@attack_power / 2)
	  else
	  	enemy.damage(@attack_power)
		end
end

