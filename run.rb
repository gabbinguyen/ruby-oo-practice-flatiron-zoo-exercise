require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zebra = Animal.new("zebra", 20, "Polly")
tiger = Animal.new("tiger", 40, "George")
monkey = Animal.new("monkey", 10, "Fred")
tiger_2 = Animal.new("tiger", 30, "Sal")

zoo1 = Zoo.new("SD Zoo", "SD")
zoo2 = Zoo.new("small SD zoo", "SD")

zoo1.add_animals(zebra)
zoo1.add_animals(tiger)
zoo1.add_animals(monkey)

binding.pry
puts "done"
