$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  gross = 0;
  gross_length = director_data[:name][1][:movies].length
  counter = 0;

  while counter < gross_length do
    gross += nds[:name][1][:movies][counter][:worldwide_grosses]
    counter += 1
  end

  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  directors_total = {}

  #directors_total
end


# [{:name=>"Stephen Spielberg",
#   :movies=>[{:title=>"Jaws",:studio=>"Universal",:worldwide_gross=>260000000,:release_year=>1975},{:title=>"Close Encounters of the Third Kind",:studio=>"Columbia",:worldwide_gross=>135189114,:release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#      :studio=>"Paramount",
#      :worldwide_gross=>248159971,
#      :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#      :studio=>"Universal",
#      :worldwide_gross=>435110554,
#      :release_year=>1982},
#     {:title=>"Schindler's List",
#      :studio=>"Universal",
#      :worldwide_gross=>96898818,
#      :release_year=>1993},
#     {:title=>"Lincoln",
#      :studio=>"Buena Vista",
#      :worldwide_gross=>182207973,
#      :release_year=>2012}]},
