module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class Dog
  include Speak
  def initialize(name, age)
    @name = name
    @age = age
  end

end

Sunshine = Dog.new("Sunshine", 7)
Sunshine.speak("Woof!")