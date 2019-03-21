require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative '../lib/store'
require_relative '../lib/employee'

puts "Exercise 6"
puts "----------"

@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bindu", last_name: "Prakash", hourly_rate: 60)
@store1.employees.create(first_name: "Dave", last_name: "Case", hourly_rate: 60)
@store1.employees.create(first_name: "David", last_name: "Tom", hourly_rate: 60)

puts @store1.employees.count

@store2 = Store.find_by(id: 2)
@store2.employees.create(first_name: "Case", last_name: "Master", hourly_rate: 40)
@store2.employees.create(first_name: "Blue", last_name: "Berry", hourly_rate: 70)
@store2.employees.create(first_name: "Swing", last_name: "People", hourly_rate: 100)
@store2.employees.create(first_name: "Ben", last_name: "John", hourly_rate: 140)

puts @store2.employees.count


