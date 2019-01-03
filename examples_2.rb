# I. Számítsd ki a paraméterül kapott tömbben szereplő számok összegét.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. each
# 2. inject

def sum_of_array_with_each arr
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

p sum_of_array_with_each(array)

def sum_of_array arr
  arr.inject(0) do |sum, num|
    sum += num
  end
end

p sum_of_array(array)

# II. Számold meg, hányszor szerepel a megadott tömbben a 3-as szám.
array = [ 1, 2, 3, 3, 2, 3, 2, 123 ]
# 1. each
# 2. inject

def how_many_with_each arr
  sum = 0
  arr.each do |num|
    sum += 1 if num == 3
  end
  sum
end

p how_many_with_each(array)

def how_many arr
  arr.inject(0) do |sum, num|
    sum += 1 if num == 3
    sum
  end
end

p how_many(array)

# III. Keresd meg a tömb maximális értékű elemét.
#      Tekinthetjük a tömböt pozitív számokat tartalmazó tömbnek.
array = [ 1, 234, 32, 356, 124, 21554, 123 ]
# 1. each
# 2. inject

def find_max_with_each arr
  max_number = nil
  arr.each do |num|
    if max_number. nil? || max_number < num
      max_number = num
    end
  end
  max_number
end

p find_max_with_each(array)

def find_max arr
  arr.inject(nil) do |max_num, num|
    max_num = num if max_num.nil? || max_num < num
    max_num
  end
end

p find_max(array)

# IV. Keresd meg a tömb maximális értékű, páratlan elemét.
#     Tekinthetjük a tömböt pozitív számokat tartalmazó tömbnek.
array = [ 1, 234, 32, 356, 124, 21554, 123 ]
# 1. each
# 2. inject

def find_max_odd_with_each arr
  max_odd = nil
  arr.each do |num|
    if max_odd.nil? || num.odd? && max_odd < num
      max_odd = num
    end
  end
  max_odd
end

def find_max_odd_with_inject arr
  arr.inject(nil) do |max_odd, num|
    max_odd = num if max_odd.nil? || num.odd? && max_odd < num
    max_odd
  end
end

p find_max_odd_with_each(array)
p find_max_odd_with_inject(array)

# V. Keresd meg a tömbben a 355-höz legközelebb eső számot.
#    Tekinthetjük a tömböt 1000000-nál kisebb pozitív számokat tartalmazó tömbnek.
array = [ 1, 234, 32, 356, 124, 21554, 123 ]
# 1. each
# 2. inject

def nearest_number_with_each arr
  absolute = nil
  nearest = nil
  arr.each do |num|
    act_absolute = (355 - num).abs
    if absolute.nil? || act_absolute < absolute
      absolute = act_absolute
      nearest = num
    end
  end
  nearest
end

def nearest_number_with_inject arr
  nearest = nil
  arr.inject(nil) do |absolute, num|
    act_absolute = (355 - num).abs
    if absolute.nil? || act_absolute< absolute
      absolute = act_absolute
      nearest = num
    end
    absolute
  end
  nearest
end

p nearest_number_with_inject(array)
p nearest_number_with_each(array)
