require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < MiniTest::Test

  def test_it_exists
    sal = User.new("Sal")
    assert_instance_of User, sal
  end

  def test_jokes
    sal = User.new("Sal")
    assert_equal [], sal.jokes
  end

  def test_joke_instance_of_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    assert_instance_of Joke, joke_1
  end

  def test_joke_2_instance_of_joke
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    assert_instance_of Joke, joke_2
  end

  def test_sal_learn_joke_1
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")

    sal.learn(joke_1)
    sal.learn(joke_2)
    assert_equal [joke_1, joke_2], sal.jokes
  end

  def test_instance_of_another_user_named_ali
    sal = User.new("Sal")
    ali = User.new("Ali")
    assert_instance_of User, ali
    assert_instance_of User, sal
  end

  def test_sal_tells_ali_joke
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)

    assert_equal [joke_1, joke_2], ali.jokes
  end

  def test_ali_joke_by_id_1
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    assert_equal joke_1, ali.joke_by_id(1)
  end

  def test_ali_joke_by_id_2
    joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.learn(joke_1)
    sal.learn(joke_2)
    sal.tell(ali, joke_1)
    sal.tell(ali, joke_2)
    assert_equal joke_2, ali.joke_by_id(2)
  end

end





#
