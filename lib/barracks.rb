require 'pry'

class Barracks

FOOTMAN_GOLD = 135
FOOTMAN_FOOD = 2

PEASANT_GOLD = 90
PEASANT_FOOD = 5

	attr_reader :gold, :food

	def initialize
		@gold = 1000
		@food = 80
	end

	def can_train_footman?
  	if self.gold >= FOOTMAN_GOLD && self.food >= FOOTMAN_FOOD
 			true
 		else
 			false
		end
	end

	def train_footman
		if can_train_footman?
			@gold -= FOOTMAN_GOLD
			@food -= FOOTMAN_FOOD
			Footman.new
		end
	end

	def can_train_peasant?
		if self.gold >= PEASANT_GOLD && self.food >= PEASANT_FOOD
			true
		else
			false
		end
	end

	def train_peasant
		if can_train_peasant?
			@gold -= PEASANT_GOLD
			@food -= PEASANT_FOOD
			Peasant.new
		end
	end

end