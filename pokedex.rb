require_relative 'pokeapi'

class Pokedex < PokeApi
	def self.national
		@@national ||= get 'pokedex/1/'
	end
end