#write your code here
=begin

def translate (words)
  vowels = %w( a e i o u)
  #alphabet = ('a'..'z').to_a
  #consonants = alphabet - vowels

  pig_latin = words.split.map do |word|
    if vowels.include? word[0]
      word + 'ay'
    else
      consonant_helper(word)
    end
  end
    pig_latin.join(' ')
end

def consonant_helper(word)
  vowels = %w( a e i o u)
  consonants = ""
  remaining_vowels = ""
  vowel_index = 0
  word_char_array = word.split(//)
  word_char_array.each_with_index do |letter,index|
    if !(vowels.include?(letter))
      consonants += letter
    else
      vowel_index += index
      break
    end
  end
  remaining_vowels += word[(vowel_index..-1)]
  remaining_vowels + consonants + 'ay'
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")
puts
puts translate("nix stupid")
puts
puts translate("sun")

=end

def translate(string)
  words = string.split(" ")
  words = words.map do |word|
    letters = word.split(//)
    until letters[0] =~ /[aeiou]/ do
      if letters[0] == "q" && letters[1] == "u"
        letters.push(letters.shift(2))
      else
        letters.push(letters.shift)
      end
    end
    letters.push("ay")
    letters.join
  end
  words.join(" ")
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")
puts
puts translate("nix stupid")
puts
puts translate("sun")