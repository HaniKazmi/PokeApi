require "test/unit"
require 'pokeruby'

class TestAbility < Test::Unit::TestCase

	def test_constructor
		assert Ability.new '/api/v1/ability/1/'
	end

	def test_methods
	 	ability = Ability.new '/api/v1/ability/1/'
		assert_respond_to ability, :name
		assert_respond_to ability, :description
	end

end