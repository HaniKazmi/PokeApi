require_relative 'pokeapi'

class EggGroup < PokeApi

	def initialize id
		@egg_group = self.class.get "#{id}"
	end

	def name
		@egg_group['name']
	end

	def pokemon
		@egg_group['pokemon']
	end

end