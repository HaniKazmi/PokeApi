require_relative 'pokeapi'

class Pokedex < PokeApi
	def self.national
		@@national ||= get_resource 'pokedex/1/'
	end
end