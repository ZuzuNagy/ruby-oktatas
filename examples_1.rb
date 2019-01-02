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
  arr.inject({}) do |new_hash, num|
    paros ||= []
    paratlan ||= []
    if num.even?
     new_hash[paros] << num
    else
      new_hash[paratlan] << num
    end
    new_hash
  end
end

p create_hash(array)

# III. Készíts egy olyan tömböt, ami a megadott tömbben található számok (Fixnum példányok) String megfelelőjét tartalmazza.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. map
# 2. tetszőleges


# IV. Készíts egy olyan asszociatív tömböt (Hash-t), aminek kulcsai a megadott tömbben szereplő számok String változatai, értékei pedig a tömbben szereplő számok.
# Pl.: [ 1, 2, 3 ] => { "1" => 1, "2" => 2, "3" => 3 }
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. inject
# 2. tetszőleges


# V. Számítsd ki a tömbben található számok összegét.
array = [ 1, 2, 3, 4, 567, 123, 356, 654647 ]
# 1. inject
# 2. tetszőleges


# VI. Válaszd ki azokata a kulcs-érték párokat, amiknél a kulcs nem egy nullánál nagyobb szám String megfelelője.
hash = { :nem_szam => :nem_szam, [ 1, 2, 3 ] => :tomb, "123" => :szazhuszonharom_string, 123 => :szazhuszonharom_szam, "0" => :nulla_string }
# Segítség: Minden objektumnak van :is_a? és class metódusa. Próbáld ki őket irb-ben.
# 1. select
# 2. inject
# 3. tetszőleges
