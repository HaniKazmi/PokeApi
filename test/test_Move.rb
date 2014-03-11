require "test/unit"
require_relative '../move'

class TestMove < Test::Unit::TestCase

	def test_constructor
		assert Move.new '/api/v1/move/1/'
	end

	def test_methods
		move = Move.new '/api/v1/move/1/'
		assert_respond_to move, :name
		assert_respond_to move, :description
		assert_respond_to move, :power
		assert_respond_to move, :accuracy
		assert_respond_to move, :category
		assert_respond_to move, :pp
	end

end