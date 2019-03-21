require_relative '../setup'
require_relative './exercise_1'
require_relative '../lib/store'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.all[1]
@store1.name = 'Burnaby North'
@store1.save
puts @store1.name