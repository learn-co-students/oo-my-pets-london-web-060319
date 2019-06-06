require 'pry'
require_relative 'dog.rb'
require_relative 'cat.rb'
require_relative 'fish.rb'

class Owner
  
  attr_accessor :pets, :name, :owner
  attr_reader :species

  @@all = []
  def initialize(species)
    @owner = owner
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}  
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{species}."
  end
  
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    n_fish = @pets[:fishes].count
    n_dogs = @pets[:dogs].count
    n_cats = @pets[:cats].count
    return "I have #{n_fish} fish, #{n_dogs} dog(s), and #{n_cats} cat(s)."
  end

end
