class String
  define_method(:scrabble) do
    score = 0

    letter_values = Hash.new()

    letter_values.store("a",1)
    letter_values.store("e",1)
    letter_values.store("i",1)
    letter_values.store("o",1)
    letter_values.store("u",1)
    letter_values.store("l",1)
    letter_values.store("n",1)
    letter_values.store("r",1)
    letter_values.store("s",1)
    letter_values.store("t",1)
    letter_values.store("d",2)
    letter_values.store("g",2)
    letter_values.store("b",3)
    letter_values.store("c",3)
    letter_values.store("m",3)
    letter_values.store("p",3)
    letter_values.store("f",4)
    letter_values.store("h",4)
    letter_values.store("v",4)
    letter_values.store("w",4)
    letter_values.store("y",4)
    letter_values.store("k",5)
    letter_values.store("j",8)
    letter_values.store("x",8)
    letter_values.store("q",10)
    letter_values.store("z",10)

    word = self.downcase.split("")

    word.each do |letter|
      score = score + letter_values.fetch(letter)
    end

    score

  end
end
