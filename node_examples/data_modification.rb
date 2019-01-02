require 'pp'

def node_2_attribute_names
  [ :id, :parent_id, :value ]
end

def node_3_attribute_names
  [ :id, :parent_id, :value, :left_value, :rigth_value, :depth ]
end

data = [ [ 'Attributes(Node2)', 'id', 'parent_id', 'value', nil,          nil,           nil ],
         [ 'Node2',             1,    nil,         1,       nil,          nil,           nil ],
         [ 'Node2',             2,    1,           2,       nil,          nil,           nil ],
         [ 'Node2',             4,    2,           4,       nil,          nil,           nil ],
         [ 'Node2',             3,    1,           3,       nil,          nil,           nil ],
         [ 'Node2',             5,    3,           5,       nil,          nil,           nil ],
         [ 'Node2',             6,    3,           6,       nil,          nil,           nil ],
         [ 'Node2',             7,    6,           7,       nil,          nil,           nil ],
         [ 'Attributes(Node3)', 'id', 'parent_id', 'value', 'left_value', 'rigth_value', 'depth' ],
         [ 'Node3',             1,     nil,        1,       1,            14,            0 ],
         [ 'Node3',             2,     1,          2,       2,            5,             1 ],
         [ 'Node3',             4,     2,          4,       3,            4,             2 ],
         [ 'Node3',             3,     1,          3,       6,            13,            1 ],
         [ 'Node3',             5,     3,          5,       7,            8,             2 ],
         [ 'Node3',             6,     3,          6,       9,            12,            2 ],
         [ 'Node3',             7,     6,          7,       10,           11,            3 ]
       ]

# Alakítsd át a fenti (data) adatszerkezetet úgy, hogy az megegyezzen a lenti (expected_hash) adatszerkezettel.
# A megoldást a hash változónak szükséges értékül adni.
hash = {}

expected_hash = { :Node2 => { 1 => { :id => 1, :parent_id => nil, :value => 1 },
                              2 => { :id => 2, :parent_id => 1,   :value => 2 },
                              4 => { :id => 4, :parent_id => 2,   :value => 4 },
                              3 => { :id => 3, :parent_id => 1,   :value => 3 },
                              5 => { :id => 5, :parent_id => 3,   :value => 5 },
                              6 => { :id => 6, :parent_id => 3,   :value => 6 },
                              7 => { :id => 7, :parent_id => 6,   :value => 7 } },
                  :Node3 => { 1 => { :id => 1, :parent_id => nil, :value => 1, :left_value => 1,  :rigth_value => 14, :depth => 0 },
                              2 => { :id => 2, :parent_id => 1,   :value => 2, :left_value => 2,  :rigth_value => 5,  :depth => 1 },
                              4 => { :id => 4, :parent_id => 2,   :value => 4, :left_value => 3,  :rigth_value => 4,  :depth => 2 },
                              3 => { :id => 3, :parent_id => 1,   :value => 3, :left_value => 6,  :rigth_value => 13, :depth => 1 },
                              5 => { :id => 5, :parent_id => 3,   :value => 5, :left_value => 7,  :rigth_value => 8,  :depth => 2 },
                              6 => { :id => 6, :parent_id => 3,   :value => 6, :left_value => 9,  :rigth_value => 12, :depth => 2 },
                              7 => { :id => 7, :parent_id => 6,   :value => 7, :left_value => 10, :rigth_value => 11, :depth => 3 } } }

p hash == expected_hash 
