require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new
surrey.name = 'surrey'
surrey.annual_revenue = 224000
surrey.mens_apparel = false
surrey.womens_apparel = true
@store4 = surrey
surrey.save

whistler = Store.new
whistler.name = 'whistler'
whistler.annual_revenue = 1900000
whistler.mens_apparel = true
whistler.womens_apparel = false
@store5 = whistler
whistler.save

yaletown = Store.new
yaletown.name = 'yaletown'
yaletown.annual_revenue = 430000
yaletown.mens_apparel = true
yaletown.womens_apparel = true
@store6 = yaletown
yaletown.save

# puts @store1.name
# puts @store2.name
# puts @store3.name
# puts @store4.name
# puts @store5.name


@mens_store = Store.where(mens_apparel: true)
@mens_store.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

@womens_store = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)
@womens_store.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end
