#write your code here

def add (x,y)
  x + y
end

def subtract (x,y)
  x - y
end

def sum (x)
  sum = 0
  x.each { |a| sum += a}
  sum
end

def multiply (y, *x)
  product = y
  x.each { |m| product *= m}
  product
end

def power (b,e)
  b**e
end

def factorial (x)
  t = 1
  x.downto(1) { |m| t = t * m }
  t
end

puts factorial (0)