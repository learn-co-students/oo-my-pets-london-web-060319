require "pry"

class Owner
  attr_accessor(:count, :reset_all, :name, :pets)
  attr_reader(:species)
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes  => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
    fish_n = Fish.new(fish_name)
    @pets[:fishes] << fish_n
  end
  def buy_cat(cat_name)
    cat_n = Cat.new(cat_name)
    @pets[:cats] << cat_n
  end
  def buy_dog(dog_name)
    dog_n = Dog.new(dog_name)
    @pets[:dogs] << dog_n
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
    @pets.collect do |pets, array|
      array.each do |v|
        v.mood = "nervous"
      end
      array.clear
    end
    
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end



end

# binding.pry
# 0