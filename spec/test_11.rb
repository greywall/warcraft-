require_relative 'spec_helper'

describe Barracks do
	before :each do
		@barracks = Barracks.new
	end
end

it "has and knows its HP(health_points)"
	expect(@barracks.health_points).to eq(500)
end


describe Footman do
	before :each do
		@footman = Footman.new
		@barracks = Barracks.new
	end

	describe "#attack" do
		it "does only half of its AP as damage to Barrack"
			expect(@footman)


			damage(3) 


end


	