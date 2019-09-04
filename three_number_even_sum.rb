class Integer
  def solutions
    count = 0
    (1..self).to_a.combination(3).each do |comb|
      count += 1 if comb.inject(0){ |sum, e|  sum + e }.even?
    end
    count
  end
end

puts "Enter the Range for positive integer no."
num= gets.to_i
puts num.solutions

