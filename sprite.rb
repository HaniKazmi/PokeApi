require_relative 'pokeapi'

class Sprite < PokeApi

	def initialize id
		@sprite = self.class.get "#{id}"
	end

	def name
		@sprite['name']
	end

	def pokemon
		@sprite['pokemon']
	end

	def image
		@sprite['image']
	end
	
end