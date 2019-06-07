class Dog
  attr_accessor :mood 
  attr_reader :name

  def initialize(name)
  @name=name 
  @mood="nervous"
  end 

end

#if you want to access instance varilables in initalize- need method 