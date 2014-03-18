require_relative 'pokeapi'

class Ability < PokeApi

	def initialize id
		@ability = self.class.get "#{id}"
	end
	
	def name
		@ability['name']
	end

	def description
		@ability['description']
	end

end