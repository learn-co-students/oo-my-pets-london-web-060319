# require "pry"
class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all=[] 
 

  def initialize(species)
  @species=species 
  @pets = {fishes: [], cats: [], dogs: []}
  @name=name 
  @@all<<self 
  end   

   def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes]<< fish 
  end 
# binding.pry 
# 0 

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs]<< dog 
end 

def buy_cat(name)
  cat= Cat.new(name)
  @pets[:cats]<< cat 
end

  def self.all 
    @@all 
  end 

  def self.reset_all 
  all.clear
  end 

  def species
    @species
  end 

  def name
  @name 
  end 

  def self.count
    self.all.length 
  end 

  def say_species 
    "I am a #{self.species}."
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
    @pets.each do |type,pet|
      @pets[type].each do |petss|
      petss.mood = "nervous"
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
