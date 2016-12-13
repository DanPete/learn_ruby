#write your code here
def ftoc (x)
  ((x - 32) * 5 / 9)
end

puts ftoc (212)

def ctof (y)
  (y * 9.0 / 5.0 + 32)
end

puts ctof(100)

puts "32 Fahrenheit = #{ftoc(32)} Celsius"
puts "212 Fahrenheit = #{ftoc(212)} Celsius"
puts "98.6 Fahrenheit = #{ftoc(98.6).to_i} Celsius"
puts "68 Fahrenheit = #{ftoc(68)} Celsius"
puts
puts "0 Celsius = #{ctof(0).to_i} Fahrenheit"
puts "100 Celsius = #{ctof(100).to_i} Fahrenheit"
puts "20 Celsius = #{ctof(20).to_i} Fahrenheit"
puts "37 Celsius = #{ctof(37)} Fahrenheit"