require "test/unit"
require_relative '../move'

class TestType < Test::Unit::TestCase

	def test_constructor
		assert Type.new '/api/v1/type/1/'
	end

	def test_methods
		type = Type.new '/api/v1/type/1/'
		assert_respond_to type, :name
		assert_respond_to type, :ineffective
		assert_respond_to type, :no_effect
		assert_respond_to type, :resistance
		assert_respond_to type, :super_effective
		assert_respond_to type, :weakness
		assert_respond_to type, :create_type
	end

	def test_type_chart
		(1..18).each do |i|
			type = Type.new "/api/v1/type/#{i}/"
			chart_size = Type.type_chart.size
			assert type.weakness
			type.weakness.each { |j| assert_not_nil Type.type_chart[j.name] }
		end
	end

end