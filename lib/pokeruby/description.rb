require_relative 'pokeapi'

class Description < PokeApi

	def initialize id
		@description = self.class.get "#{id}"
	end

	def name
		@description['name']
	end

	def description
		@description['description']
	end

	def games
		@description['games']
	end

	def pokemon
		@description['pokemon']
	end

end