# frozen_string_literal: true

# Dog class, according to the specs from a/A
class Dog
  attr_reader :name, :breed
  attr_writer :bark
  attr_accessor :age, :favorite_foods

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def bark
    if @age > 3
      @bark.upcase
    else
      @bark.downcase
    end
  end

  def favorite_food?(food)
    @favorite_foods.map(&:downcase).include? food.downcase
  end
end
