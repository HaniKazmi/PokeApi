require "test/unit"
require 'pokeruby/pokemon'

class TestPokemon < Test::Unit::TestCase
	def test_constuctor
		assert Pokemon.new 1
	end

	def test_methods
		pokemon = Pokemon.new 1
		assert_respond_to pokemon, :national_id
		assert_respond_to pokemon, :name
		assert_respond_to pokemon, :types
		assert_respond_to pokemon, :abilities
		assert_respond_to pokemon, :egg_groups
		assert_respond_to pokemon, :evolutions
		assert_respond_to pokemon, :descriptions
		assert_respond_to pokemon, :moves
		assert_respond_to pokemon, :catch_rate
		assert_respond_to pokemon, :species
		assert_respond_to pokemon, :egg_cycles
		assert_respond_to pokemon, :ev_yield
		assert_respond_to pokemon, :exp
		assert_respond_to pokemon, :growth_rate
		assert_respond_to pokemon, :height
		assert_respond_to pokemon, :weight
		assert_respond_to pokemon, :happiness
		assert_respond_to pokemon, :male_female_ratio
	end

	def test_bulbasaur
		bulbasaur = Pokemon.new "bulbasaur"
		assert bulbasaur
		bulbasaur_cap = Pokemon.new "Bulbasaur"
		assert bulbasaur_cap
		assert_same bulbasaur, bulbasaur_cap
	end
end