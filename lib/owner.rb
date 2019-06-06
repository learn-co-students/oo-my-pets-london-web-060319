class Owner
  # code goes here 
attr_accessor :pets, :name, :mood
attr_reader :species

@@all = []
@@count = 0

def initialize(pets)
  @pets = {fishes: [], cats: [], dogs: []}
  @name = name 
  @mood = mood 
  @species = "human"
  @@count += 1
  @@all << self
end

def self.all
  @@all
end

def self.count 
  @@count
end

def self.reset_all
  @@all = []
  @@count = 0
end

def species
  @species
end

def say_species
  "I am a #{species}."
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  fish
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  cat
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
  dog
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
  @pets.each do |type, pet|
    @pets[type].each do |pet|
      pet.mood = "nervous"
    end
  end
  @pets.clear
end

def list_pets
  fish_count = @pets[:fishes].count
  dog_count = @pets[:dogs].count
  cat_count = @pets[:cats].count

  "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
end

end