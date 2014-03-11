require "test/unit"
require_relative '../pokedex'

class TestPokedex < Test::Unit::TestCase
	def test_constuctor
		assert Pokedex.national
	end

end