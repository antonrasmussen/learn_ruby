def double_evens(numbers)
  numbers.select { |n| n.even? }.map { |n| n * 2 }
end
print double_evens([1, 2, 3, 4, 5])
print "\n"