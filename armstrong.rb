class Integer
  def length
    Math.log10(self).to_i + 1
  end

  def armstrong?
    n = self
    sum = 0
    while(n!=0)
      r=n%10
      sum=sum+r ** length
      n=n/10
    end
    sum == self
  end
end
puts "Enter any no. "
num= gets.to_i
puts num.armstrong?