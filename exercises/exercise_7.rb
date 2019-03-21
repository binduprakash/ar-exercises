require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/store'
require_relative '../lib/employee'

puts "Exercise 7"
puts "----------"

puts "Provide a store name: "
store_name = gets.chomp

store = Store.new(name: store_name)
store.save
store.errors.messages.each do |err_msg|
    puts err_msg
end

