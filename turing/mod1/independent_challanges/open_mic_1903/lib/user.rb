class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    if @jokes.include?(joke)
      user.jokes << joke
    end
  end

  def joke_by_id(num)
    joke_id = []
      jokes.map do |x|
        if x.id == num
          joke_id << x
        end
      end
    joke_id[0]
  end

end
