class Unit

	attr_reader :health_points, :attack_power

	def initialize(health_points, attack_power)
		@health_points = health_points
		@attack_power = attack_power
	end

	def damage(points)
		@health_points -= points
	end

	def attack!(enemy)
		enemy.damage(3)
	end

end


# enemy_unit = Unit.new(40,5)
# enemy_unit.damage(3)

# #enemy_unit healthpoints = 37

# other_enemy = Unit.new(100,3)
# other_enemy.attack_power!(enemy_unit)