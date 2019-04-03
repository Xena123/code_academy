movies = {
  rocky: 5,
  matilda: 4,
  superman: 3
  }

puts "What would you like to do:"
puts "update, delete, add or display"

choice = gets.chomp.downcase

case choice
  when "update"
    puts "Please enter the title of the movie"
    title = gets.chomp.downcase.to_sym
    if movies[title] == nil
      puts "That movie is not in your library"
    else
      puts "Please enter the new rating of the movie"
      rating = gets.chomp.to_i
      movies[title] = rating.to_i
      puts "#{title.capitalize} has a new rating of #{rating}"
    end
  when "delete"
    puts "Please enter the title of the movie you would like to delete"
    title = gets.chomp.downcase.to_sym
    if movies[title] == nil
      puts "That movie is not in your library"
    else
      movies.delete(title)
      puts "#{title.capitalize} has been deleted from your library"
      p movies
    end
  when "add"
    puts "Please enter the title of the movie"
    title = gets.chomp.downcase.to_sym
    if movies[title] == nil
      puts "What is the rating of the movie?"
      rating = gets.chomp.to_i
      movies[title] = rating
      puts "#{title.capitalize} with the rating of #{rating} was added"
    else
      puts "That movie is already in your library"
    end
  when "display"
    movies.each {|k,v| puts "#{k.capitalize}: #{v}"}
  else
    puts "Error!"
end