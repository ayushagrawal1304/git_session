class Integer
  def prime?
    (2..self/2).each{ |i| return false if (self % i).zero? }
    true
  end
end
puts "Enter any no. "
num = gets.to_i
puts num.prime?
