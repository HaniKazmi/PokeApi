require "test/unit"
require_relative '../game'

class TestGame < Test::Unit::TestCase

	def test_constructor
		assert Game.new '/api/v1/game/1/'
	end

	def test_methods
	 	game = Game.new '/api/v1/game/1/'
		assert_respond_to game, :name
		assert_respond_to game, :generation
		assert_respond_to game, :release_year
	end

end