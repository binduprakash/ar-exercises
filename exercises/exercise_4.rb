require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative '../lib/store'

puts "Exercise 4"
puts "----------"

Store.create(
    name: "Surrey",
    annual_revenue: 224000,
    mens_apparel: false,
    womens_apparel: true
)
Store.create(
    name: "Whistler",
    annual_revenue: 1900000,
    mens_apparel: true,
    womens_apparel: false
)
Store.create(
    name: "Yaletown",
    annual_revenue: 430000,
    mens_apparel: true,
    womens_apparel: true
)
puts Store.count


@mens_stores = Store.where(mens_apparel: true)
puts @mens_stores.count

@mens_stores.each do | men_store | 
    puts men_store.name +  " => $" + men_store.annual_revenue.to_s
end

@womens_store_less_than_1m = Store.where(
    womens_apparel:true
).where("annual_revenue < ?", 1000000)

@womens_store_less_than_1m.each do |women_store|
    puts women_store.name + " => $" + women_store.annual_revenue.to_s
end