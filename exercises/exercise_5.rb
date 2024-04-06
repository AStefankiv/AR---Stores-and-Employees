require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue) # sum of all stores' annual revenue
@average_revenue = Store.average(:annual_revenue) # average annual revenue for all stores
@stores_over_million = Store.where("annual_revenue > ?", 1000000).count # number of stores that are generating $1M or more in annual sales

puts "Total revenue: #{@total_revenue}"
puts "Average revenue: #{@average_revenue}"
puts "Number of stores generating $1M or more in annual sales: #{@stores_over_million}"