require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'

class JokeTest < Minitest::Test
  def test_it_exists
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_instance_of Joke, joke
  end

  def test_it_has_attributes
    joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline
  end

  def test_joke_2_is_added
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_equal Joke, joke_2
  end
end
