require "test/unit"
require 'pokeruby/description'

class TestDescription < Test::Unit::TestCase

	def test_constructor
		assert Description.new '/api/v1/description/2/'
	end

	def test_methods
	 	description = Description.new '/api/v1/description/2/'
		assert_respond_to description, :name
		assert_respond_to description, :description
		assert_respond_to description, :games
		assert_respond_to description, :pokemon
	end

end