#write your code here
def echo (x)
  "#{x}"
end

def shout (x)
  "#{x.upcase}"
end

def repeat(text, c=2)
  [text] * c * ' '
end

def start_of_word (text, position)
  text[0..position - 1]
  #parts = text.split('')
  #parts[0..position-1]
end

def first_word (text)
  text = text.split(' ')
  text[0]
end

def titleize (text)
  words = text.split.map do |word|
    if ["the", "and", "over"].include?(word)
      word
    else
      word.capitalize
    end
  end
    words.first.capitalize!
    words.join(' ')
end


puts echo ("hello")
puts shout ("hello")
puts repeat("hello")
puts repeat("hello", 3)
puts
puts start_of_word("hello", 1)
puts start_of_word("Bob", 2)
s = "abcdefg"
puts start_of_word(s, 1)
puts start_of_word(s, 2)
puts start_of_word(s, 3)
puts
puts first_word("Hello World")
puts first_word("oh dear")
puts
puts titleize("jaws")
puts titleize("david copperfield")
puts titleize("war and peace")
puts titleize("the bridge over the river kwai")
puts
