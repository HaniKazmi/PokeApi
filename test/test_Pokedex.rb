require "test/unit"
require 'pokeruby/pokedex'

class TestPokedex < Test::Unit::TestCase
	def test_constuctor
		assert Pokedex.national
	end

end