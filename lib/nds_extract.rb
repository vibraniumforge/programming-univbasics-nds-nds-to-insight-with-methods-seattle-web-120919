$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum = 0
  counter = 0
  while counter < director_data[:movies].length do
    sum += director_data[:movies][counter][:worldwide_gross]
    counter +=1
  end
  sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  index = 0
  while index < nds.length do
    director = nds[index]
    # binding.pry
    result[director[:name]] = gross_for_director(director)
    index +=1
  end
  result
end
