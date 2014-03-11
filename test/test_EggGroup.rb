require "test/unit"
require_relative '../egg_group'

class TestEggGroup < Test::Unit::TestCase

	def test_constructor
		assert EggGroup.new '/api/v1/egg/1/'
	end

	def test_methods
	 	egg_group = EggGroup.new '/api/v1/egg/1/'
		assert_respond_to egg_group, :name
		assert_respond_to egg_group, :pokemon
	end

end