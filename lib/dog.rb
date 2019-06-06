class Dog
  # code goes here
  attr_reader :name
  attr_accessor :mood
  attr_writer 

  def initialize(name)
    @name = name
    @mood = "nervous"

  end
end