# Learning how to use integers and user inputs

print "Enter number:"
num = Integer(gets.chomp)
if num < 5
  puts "#{num} is less than 5!"
elsif num > 5
  puts "#{num} is more than 5!"
else
  puts "#{num} is equal to 5!"
end

# Declaring variables for the user to input

print "What's your first name? ";
first_name = gets.chomp;
first_name2 = first_name.capitalize;
first_name.capitalize!;

print "What's your last name? ";
last_name = gets.chomp;
last_name2 = last_name.capitalize;
last_name.capitalize!;

print "What city are you from? ";
city = gets.chomp;
city2 = city.capitalize;
city.capitalize!;

print "What state or province are you from? ";
state = gets.chomp;
state2 = state.upcase;
state.upcase!;

puts "Your name is #{first_name} #{last_name}, you are from #{city}, #{state}!";