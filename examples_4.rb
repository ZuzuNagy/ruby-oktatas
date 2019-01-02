p 'I. ' + '-' * 10
# I. Készítsd el a my_each_with_index metódust tömbre. Ugyanúgy kell működnie, mint az each_with_index-nek.

class Array
  def my_each_with_index &block
  end
end

array = [ 1, 2, 3 ]

p "-- each_with_index --"
array.each_with_index do |item, index|
  puts "#{index} : #{item}\n"
end
p "-- my_each_with_index --"
array.my_each_with_index do |item, index|
  puts "#{index} : #{item}\n"
end

p 'II. ' + '-' * 10
# II. Készítsd el a my_map metódust tömbre. Ugyanúgy kell működnie, mint a map-nek.

class Array
  def my_map &block
  end
end

array = [ 1, 2, 3 ]

p "-- map --"
p array.map(&:to_s)
p "-- my_map --"
new_array = array.my_map do |number|
  number.to_s
end
p new_array

p array.my_map(&:to_s)

p 'III. ' + '-' * 10
# III. Készítsd el a my_inject metódust tömbre. Ugyanúgy kell működnie, mint az inject-nek.

class Array
  def my_inject argument=nil, &block
   end
end

array = [ 1, 2, 3 ]

p "-- inject --"
p array.inject(&:+)
p "-- my_inject --"
sum = array.my_inject(0) do |sum, number|
  sum + number
end
p sum
p array.my_inject(&:+)

p 'IV. ' + '-' * 10
# IV. Készítsd el a my_select metódust tömbre. Ugyanúgy kell működnie, mint a select-nek.

class Array
  def my_select &block
  end
end

array = [ 1, 2, 3 ]

p "-- select --"
p array.select(&:even?)
p "-- my_select --"
new_array = array.my_select do |number|
  number.even?
end
p new_array
p array.my_select(&:even?)
