movies = {
	"Lion King" => 3,
  "It" => 2,
  "Night Owl" => 1,
  "Spider Man" => 4
}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp
case choice
 when "add"
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
  
  when "update"
  	puts "Pick a movie from the list:"
  	title = gets.chomp
  	if movies[title].nil?
      puts "Error: Movie is not listed in hash"
    else
      puts "Enter new rating for movie (Type a number 0 to 4.):"
      newRating = gets.chomp
      movies[title] = newRating.to_i
      puts "#{title}'s new rating is #{movies[title]}"
    end
  
  when "display"
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  
  when "delete"
  	puts "Pick a movie to delete from list:"
  	title = gets.chomp
  	if movies[title].nil?
      puts "Error: Movie is not listed in hash"
    else
      puts "#{title} has been deleted from list!"
      movies.delete(title)
    end
  
	else
  	puts "Error: Not an option"
end

puts movies