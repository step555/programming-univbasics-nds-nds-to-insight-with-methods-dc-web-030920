$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  nil

director_index = 0
  while director_index < nds.length
    current_director = nds[director_index][:name]
    result[current_director] = gross_for_director(nds[director_index])
    director_index += 1
  end
  result
end

def gross_for_director(director_data)
  movie_index = 0
  movies = director_data[:movies]
  sub_total = 0
  while movie_index < movies.length do
    sub_total += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  sub_total
end

directors_totals(directors_database)

# # Find a way to accumulate the :worldwide_grosses and return that Integer
# # using director_data as input
# def gross_for_director(director_data)
#   directors_index = 0
#   names = directors_database[directors_index][:name]
#   while movies_index < names.length
    
#     directors_index += 1
# end

# # Write a method that, given an NDS creates a new Hash
# # The return value should be like:
# #
# # { directorOne => allTheMoneyTheyMade, ... }
# def directors_totals(nds)
#   result = {}
#   nil
# end
