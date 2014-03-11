require_relative 'pokeapi'

class Move < PokeApi

	def initialize id
		@move = self.class.get "#{id}"
	end
	
	def name
		@move['name']
	end

	def description
		@move['description']
	end

	def power
		@move['power']
	end

	def accuracy
		@move['accuracy']
	end

	def category
		@move['category']
	end

	def pp
		@move['pp']
	end

end