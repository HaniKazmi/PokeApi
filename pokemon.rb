require_relative 'pokeapi'

class Pokemon < PokeApi

	def initialize id
		@pokemon = self.class.get "pokemon/#{id}"
	end

	def national_id
		pokemon['national_id']
	end

	def name
		pokemon['name']
	end

	def types
		pokemon['types']
	end

	def abilities
		pokemon['abilities']
	end

	def egg_groups
		pokemon['egg_groups']
	end

	def evolutions
		pokemon['evolutions']
	end

	def descriptions
		pokemon['descriptions']
	end

	def moves
		pokemon['moves']
	end

	def catch_rate
		pokemon['catch_rate']
	end

	def species
		pokemon['species']
	end

	def hp
		pokemon['hp']
	end

	def attack
		pokemon['attack']
	end

	def defense
		pokemon['defense']
	end

	def sp_atk
		pokemon['sp_atk']
	end

	def sp_def
		pokemon['sp_def']
	end

	def speed
		pokemon['speed']
	end

	def total
		pokemon['total']
	end

	def egg_cycles
		pokemon['egg_cycles']
	end

	def ev_yield
		pokemon['ev_yield']
	end

	def exp
		pokemon['exp']
	end

	def growth_rate
		pokemon['growth_rate']
	end

	def height
		pokemon['height']
	end

	def weight
		pokemon['weight']
	end

	def happiness
		pokemon['happiness']
	end

	def male_female_ratio
		pokemon['male_female_ratio']
	end
	
end