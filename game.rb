require_relative 'pokeapi'

class Game < PokeApi

	def initialize id
		@game = self.class.get "#{id}"
	end

	def name
		@game['name']
	end

	def generation
		@game['generation']
	end

	def release_year
		@game['release_year']
	end
	
end