require "test/unit"
require 'pokeruby'

class TestPokedex < Test::Unit::TestCase
	def test_constuctor
		assert Pokedex.national
	end

end