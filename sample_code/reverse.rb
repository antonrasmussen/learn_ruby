def reverse_words(sentence)
  sentence.split.map { |word| word.chars.reverse.join }.join(" ")
end
puts reverse_words("Hello World")

