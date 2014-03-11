require_relative 'pokeapi'

class Type < PokeApi

	def initialize id
		@type = self.class.get "#{id}"
		self.class.type_chart[self.name] ||= self
	end

	def name
		@type['name']
	end

	def ineffective
		@ineffective ||= @type['ineffective'].collect { |type| create_type ty }
	end

	def no_effect
		@no_effect ||= @type['no_effect'].collect { |type| create_type type }
	end

	def resistance
		@resistance ||= @type['resistance'].collect { |type| create_type type }
	end

	def super_effective
		@super_effective ||= @type['super_effective'].collect { |type| create_type type }
	end

	def weakness
		@weakness ||= @type['weakness'].collect { |type| create_type type }
	end

	def create_type type
		if self.class.type_chart[type['name']]; self.class.type_chart[type['name']] end
		Type.new type['resource_uri'] 
	end

end