class Integer
  def solutions?
    count = 0
    b=(1..self).to_a.combination(3).to_a
    (0..b.length-1).each do |i|
        if b[i].inject(0){|sum, e|  sum + e }.even?
            count = count+1 
        end
    end
    return count
  end
end

puts "Enter the Range for positive integer no."
num= gets.to_i
puts num.solutions?

