class A
  attr_accessor :eq, :equation, :eq_length, :result, :variables
  def initialize(str)
    @equation, output = str.split('=')
    @result = output.to_i
    @variables = @equation.gsub('+','#').gsub('*','#').split('#')
    @eq_length = variables.length
    var_define(variables)
  end
 
  def process
    count = 0
    (1..result-1).to_a.repeated_permutation(eq_length).each do |values|
      (0..eq_length-1).each do |i|
        send("#{variables[i]}=".to_sym, values[i].to_i)
      end

      if(eval(equation) == result)
        count=count+1
      end
    end
    puts count
  end  

  def var_define(variables)
    print "pp",variables,"pp"
    variables.map(&:to_sym).each do |var|
      singleton_class.class_eval { attr_accessor  var }
    print variables
    end
  end
end

puts "Enter the equation"
o=A.new(gets)
o.process
