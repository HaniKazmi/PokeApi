require 'net/http'
require 'json'

class PokeApi

	def self.get url
		JSON.parse Net::HTTP.get URI.parse "http://pokeapi.co#{url}".downcase
	end

	def self.get_resource url
		self.get "/api/v1/#{url}"
	end

	def self.type_chart
		@@type_chart ||= {}
	end

end