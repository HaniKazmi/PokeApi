require "test/unit"
require 'pokeruby'

class TestSprite < Test::Unit::TestCase

	def test_constructor
		assert Sprite.new '/api/v1/sprite/1/'
	end

	def test_methods
	 	sprite = Sprite.new '/api/v1/sprite/1/'
		assert_respond_to sprite, :name
		assert_respond_to sprite, :pokemon
		assert_respond_to sprite, :image
	end

end