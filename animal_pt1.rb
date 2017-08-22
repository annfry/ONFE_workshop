module Speak
  def speak(sound)
    puts "#{sound}"
  end
end
class Animal
  def initialize(name, age)
    @name = name
    @age = age
  end
end
class Dog < Animal
  include Speak
end
class Cat < Animal
  include Speak
end
class Fish < Animal
  include Speak
end
class Human < Animal
  include Speak
end
Sunshine = Dog.new("Sunshine", 7)
Sunshine.speak("Woof!")
Merlin = Cat.new("Merlin", 13)
Merlin.speak("Meow!")
Big_Blue = Fish.new("Big Blue", 2)
Big_Blue.speak("Glub Glub!")
Annie = Human.new("Annie", 35)
Annie.speak("I <3 ruby!")