require 'net/http'
require 'json'

class PokeApi
	def self.get url
		p "http://pokeapi.co/api/v1/#{url}"
		JSON.parse Net::HTTP.get URI.parse "http://pokeapi.co/api/v1/#{url}/"
	end
end