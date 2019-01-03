p 'I. ' + '-' * 10
# I. Igaz az az állítás, miszerint a tömb minden eleme osztható 3-mal?
array = [ 1, 2, 3 ]
# 1. each
# 2. inject

def all_number_divisible_with_inject arr
  arr.inject(true) do |memo, num|
    memo && num%3 == 0
  end
end

p all_number_divisible_with_inject(array)

p 'II. ' + '-' * 10
# II. Igaz az az állítás, miszerint a tömbben szerepel 3-mal osztható szám?
array = [ 1, 2, 3 ]
# 1. each
# 2. inject

def has_divisible_with_inject arr
  arr.inject(false) do |has, num|
    has || num%3 == 0
  end
end

p has_divisible_with_inject(array)

p 'III. ' + '-' * 10
# III. Fésüld össze a tömbben szereplő hash-eket.
array = [ { :egy => 1 }, { :ketto => 2 }, { :harom => 3 } ]
# => { :egy => 1, :ketto => 2, :harom => 3 }
# 1. each
# 2. inject

def combinate_hash_with_each arr
  new_hash = {}
  arr.each do |hash|
    hash.each do |key, value|
      new_hash[key] = value
    end
  end
  new_hash
end

def combinate_hash_with_inject arr
  arr.inject({}) do |new_hash, hash|
    hash.each do |key, value|
      new_hash[key] = value
    end
    new_hash
  end
end

p combinate_hash_with_inject(array)
p combinate_hash_with_each(array)
