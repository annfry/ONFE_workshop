module Speak
  def speak(sound)
    puts @name + " says: #{sound}"
  end
end
class Animal
  class << self; attr_accessor :name,:age end
  def initialize(name, age)
    @name = name
    @age = age
  end
end
class Dog < Animal
  DOG_YEARS = 7
  @dog_years = 0
  attr_accessor :name, :age, :dog_years
  include Speak
  def show_my_age
    age_in_dog_years
    puts "Sunshine is #{@age} years old, which is #{self.dog_years} in dog years!"
  end
  private 

  def age_in_dog_years
    self.dog_years = @age * DOG_YEARS
  end
end
Sunshine = Dog.new("Sunshine", 7)
Sunshine.speak("Woof!")
Sunshine.show_my_age