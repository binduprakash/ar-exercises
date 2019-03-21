require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative '../lib/store'

puts "Exercise 3"
puts "----------"

@store3 = Store.last
puts Store.count
@store3.destroy
puts Store.count
