require 'pry'
class Owner
  
  @@all = []
  @@counter = 0

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@counter += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@counter
  end

  def self.reset_all
    @@counter = 0
  end

 def say_species
  "I am a #{self.species}."
 end


  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end


  def walk_dogs
    @pets[:dogs].each do |walk|
      walk.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |play|
      play.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |feed|
      feed.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pets, array|
      array.each do |sold|
        sold.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    f = @pets[:fishes].count
    c = @pets[:cats].count
    d = @pets[:dogs].count

    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end
