class Book
# write your code here
attr_accessor :title


  def title= (text)
    multi_word_title = text.split(' ')

    multi_word_title.each do |item|
      little_words = %w(and in the of a an)
      if !little_words.include?(item)
        item[0] = item[0].capitalize
      end
    end

    text = multi_word_title.join(' ')

    text[0] = text[0].capitalize
    @title = text
  end



end

test = Book.new
test.title = "inferno"
puts test.title

testb = Book.new
testb.title = "stuart little"
puts testb.title

testc = Book.new
testc.title = "alexander the great"
puts testc.title

testd = Book.new
testd.title = "to kill a mockingbird"
puts testd.title

teste = Book.new
teste.title = "to eat an apple a day"
puts teste.title

testf = Book.new
testf.title = "war and peace"
puts testf.title

testg = Book.new
testg.title = "love in the time of cholera"
puts testg.title

testh = Book.new
testh.title = "the man in the iron mask"
puts testh.title

testi = Book.new
testi.title = "what i wish i knew when i was 20"
puts testi.title


