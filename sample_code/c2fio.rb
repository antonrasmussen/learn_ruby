puts "Reading Celsius temperature value from data file..."
num = File.read("temp.dat")
celsius = num.to_i
farenheit = (celsius * 9 / 5) + 32
print "Saving result ", farenheit, " to output file 'temp.out' \n"
fh = File.new("temp.out", "w")
fh.puts farenheit
fh.close

puts "Reading Farenheit temperature value from data file..."
num = File.read("temp.dat")
farenheit = num.to_i
celsius = (farenheit - 32) * 5 / 9
print "Saving result ", celsius, " to output file 'temp.out' \n"
fh = File.new("temp.out", "w")
fh.puts celsius
fh.close