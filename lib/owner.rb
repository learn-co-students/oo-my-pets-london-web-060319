class Owner
  # will know about all their pets (@pets variable hash of pets owned)
  # be able to buy a pet (making new (name argument) (buy_cat, buy_dog, buy_fish))
  # will be able to name their pets
  # be able to change pets mood by walking, feeding and playing
  # will be able to sell pets
 require 'pry'
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @name = name
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do |pet|
      pet.mood = "nervous"
    end
  end
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
  end

  def list_pets
    f = @pets[:fishes].count
    c = @pets[:cats].count
    d = @pets[:dogs].count
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end
# binding.pry
# 0