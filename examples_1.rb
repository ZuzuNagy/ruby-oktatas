# I. Készíts egy olyan tömböt, amiben a megadott tömbben szereplő páros számok szerepelnek.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. select
# 2. inject
# 3. keep_if
# 4. tesztőleges

def sorting_with_each arr
  new_array = []
  arr.each do |num|
    new_array << num if num.even?
  end
  new_array
end

p sorting_with_each(array)

def sorting_with_inject arr
  arr.inject([]) do |new_array, num|
    new_array << num if num.even?
    new_array
  end
end

p sorting_with_inject(array)

p array.select { |num| num.even? }

# II. Készíts egy olyan asszociatív tömböt (Hash-t), aminek két kulcsa van a következőnek megfelelően:
# { :paros => [ ... ], :paratlan => [ ... ] }
# A :paros kulcshoz kapcsolódó tömbbe a megadott tömbben szereplő páros számokat, a :paratlan kulcshoz kapcsolódó tömbbe a megadott tömbben szereplő páratlan számokat kellene összegyűjteni.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. inject
# 2. tetszőleges

def create_hash arr
  arr.inject({"paros"=>[],"paratlan"=>[]}) do |hash, num|
    hash[num.even? ? "paros" : "paratlan"] << num
    hash
  end
end

p create_hash(array)

# III. Készíts egy olyan tömböt, ami a megadott tömbben található számok (Fixnum példányok) String megfelelőjét tartalmazza.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. map
# 2. tetszőleges

p array.map { |num| num.to_s }

# IV. Készíts egy olyan asszociatív tömböt (Hash-t), aminek kulcsai a megadott tömbben szereplő számok String változatai, értékei pedig a tömbben szereplő számok.
# Pl.: [ 1, 2, 3 ] => { "1" => 1, "2" => 2, "3" => 3 }
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. inject
# 2. tetszőleges

def create_hash_2 arr
  arr.inject({}) do |hash, num|
    hash[num.to_s] = num
    hash
  end
end

p create_hash_2(array)

# V. Számítsd ki a tömbben található számok összegét.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. inject
# 2. tetszőleges

def sum_number arr
  arr.inject(0) do |sum, num|
    sum += num
  end
end

p sum_number(array)

p array.sum

# VI. Válaszd ki azokata a kulcs-érték párokat, amiknél a kulcs nem egy nullánál nagyobb szám String megfelelője.
hash = { :nem_szam => :nem_szam, [ 1, 2, 3 ] => :tomb, "123" => :szazhuszonharom_string, 123 => :szazhuszonharom_szam, "0" => :nulla_string }
# Segítség: Minden objektumnak van :is_a? és class metódusa. Próbáld ki őket irb-ben.
# 1. select
# 2. inject
# 3. tetszőleges

def reject_hash_key hash
  hash.reject do |key, value|
    key.is_a?(String) && key.to_i > 0
  end
end

def select_hash_key hash
  hash.select do |key, value|
    !(key.is_a?(String) && key.to_i > 0)
  end
end

def inject_hash_key hash
  hash.inject({}) do |new_hash, (key, value)|
    if !(key.is_a?(String) && key.to_i > 0)
      new_hash[key] = value
    end
    new_hash
  end
end
p reject_hash_key(hash)
p select_hash_key(hash)
p inject_hash_key(hash)
