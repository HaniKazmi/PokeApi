require_relative 'pokeapi'
require_relative 'type'
require_relative 'move'
require_relative 'ability'
require_relative 'description'

class Pokemon < PokeApi

	def initialize id
		@pokemon = self.class.get_resource "pokemon/#{id}/"
	end

	def national_id
		@pokemon['national_id']
	end

	def name
		@pokemon['name']
	end

	def types
		@types ||= @pokemon['types'].collect { |type| Type.new type['resource_uri'] }
	end

	def abilities
		@abilities ||= @pokemon['abilities'].collect { |ability| Ability.new ability['resource_uri'] }
	end

	def egg_groups
		@egg_groups ||= @pokemon['egg_groups'].collect { |egg_group| EggGroup.new egg_group['resource_uri'] }
	end

	def evolutions
		@evolutions ||= @pokemon['evolutions'].collect { |evolution| Pokemon.new evolution['resource_uri'] }
	end

	def descriptions
		@descriptions ||= @pokemon['descriptions'].collect { |description| Description.new description['resource_uri'] }
	end

	def moves
		@moves ||= @pokemon['moves'].collect { |move| Move.new move['resource_uri'] }
	end

	def catch_rate
		@pokemon['catch_rate']
	end

	def species
		@pokemon['species']
	end

	def hp
		@pokemon['hp']
	end

	def attack
		@pokemon['attack']
	end

	def defense
		@pokemon['defense']
	end

	def sp_atk
		@pokemon['sp_atk']
	end

	def sp_def
		@pokemon['sp_def']
	end

	def speed
		@pokemon['speed']
	end

	def total
		@pokemon['total']
	end

	def egg_cycles
		@pokemon['egg_cycles']
	end

	def ev_yield
		@pokemon['ev_yield']
	end

	def exp
		@pokemon['exp']
	end

	def growth_rate
		@pokemon['growth_rate']
	end

	def height
		@pokemon['height']
	end

	def weight
		@pokemon['weight']
	end

	def happiness
		@pokemon['happiness']
	end

	def male_female_ratio
		@pokemon['male_female_ratio']
	end

	def equal? other
		self.name == other.name
	end

end