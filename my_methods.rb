array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class Array

  def my_reject &block
    new_arr = []
    each do |elem|
      new_arr << elem unless block.call(elem)
    end
    new_arr
  end

end

p "...Reject..."
p array.reject(&:odd?)

new_array = array.my_reject do |number|
  number.odd?
end
p new_array
p array.my_reject(&:odd?)

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class Array

  def my_sum &block
    inject(0) do |sum, elem|
      sum += block.call(elem)
      sum
    end
  end

end

p "...Sum..."
p array.sum

p array.my_sum { |el| el }

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class Array
  def my_count &block
    issue = 0
    each do |elem|
      issue += 1 if block.call(elem)
    end
    issue
  end

  def my_count &block
    inject(0) do |issue, elem|
      block.call(elem) ? issue + 1 : issue
    end
  end

end

p "...Count..."
p array.count { |el| el%3 == 0 }
p array.my_count { |el| el%3 == 0 }

array = [2, 4, 6, 8, 10]

class Array
  def my_all? &block
    all =  true
    each do |elem|
      return false unless block.call(elem)
    end
    all
  end
  def my_all?
    !!inject(true) do |all, elem|
      all && (block_given? ? yield(elem) : elem)
    end

  end

end

p "...All..."
p array.all? #{ |el| el.even? }
p array.my_all? #{ |el| el.even? }

array = [2, 4, 5, 6]

class Array

  def my_any? &block
    any = false
    each do |elem|
      return true if block.call(elem)
    end
    any
  end

  def my_any? &block
    inject(false) do |any, elem|
      any || block.call(elem)
    end
  end

end

p "...Any..."
p array.any? { |el| el.odd? }
p array.my_any? { |el| el.odd? }

array = [1, 4, 7, 5, 8, 14, 9,]

class Array

  def my_one? &block
    one = []
    each do |elem|
      one << elem if block.call(elem)
    end
    one.size == 1
  end

  def my_one? &block
    inject(0) do |count, elem|
      return false if count == 2
      p elem
      block.call(elem) ? count + 1 : count
    end == 1
  end

end

p "...One..."
p array.one? { |el| el%7 == 0 }
p array.my_one? { |el| el%7 == 0 }
