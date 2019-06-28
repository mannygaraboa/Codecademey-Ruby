puts "how much wood would a wood chuck chuck if a wood chuck would chuck wood"

puts "Enter text: "
text = gets.chomp

words = text.split
frequencies = Hash.new(0)
words.each {|word|
	frequencies[word] += 1
}
frequencies = frequencies.sort_by do |word, count|
  count
end
frequencies.reverse!
frequencies.each do |word, count|
  puts word + " " + count.to_s
end

puts frequencies