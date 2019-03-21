require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative '../lib/store'

puts "Exercise 5"
puts "----------"

puts "Total Annual Revenue: " + Store.sum(:annual_revenue).to_s
puts "Average Annual Revenue: " + Store.average(:annual_revenue).to_s
puts "No of stores generating > 1M: " + Store.where("annual_revenue > ?", 1000000).count.to_s