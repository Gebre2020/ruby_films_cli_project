class CLI

  def start
    puts "Welcome to the film Lot, shop for a new film?"
    puts "Let's start with your name, please enter your name:"
    # API.get_data
    # binding.pry
    greet(user_input)
  end

  def user_input
    gets.strip
  end

  def greet(name)
    puts "Awesome #{name}, would you like to see our films?"
    puts "Enter the input 'y' to see the list, 'exit' to leave the lot!"
    menu
  end

  def films_list
    ["film1", "film2", "film3"].each.each_with_index(1) do |film,i|
      puts "#{i}. #{film}"
    end
    film_selection
  end

  def goodbye
    puts "Hopefully you'll come back! Have a nice day!"
  end

  def invalid
    puts "The input doesn't seem valid input, try again!"
    menu
  end

  def film_selection
    puts "Select a film for more detail"
    selection = user_input
    # puts "#{selection}"
    film = Film.find_film(selection)
    film_details(film)
    # we'll query our Film class to find the films detail
  end

  def film_details(film)
    puts "Title: #{film.title}"
    puts "Director: #{film.director}"
    puts "Producer: #{film.producer}"
    puts "To see the list again enter 'y' or 'exit' to leave the lot!"
    puts ""
    menu
  end

  # based on eser selection, either show a list of films,
  # give them an error message, or exit

  def menu
    selection = user_input
    if selection == 'y'
      films_list
      menu
    elsif selection == 'exit'
      goodbye
    else 
      invalid
    end
  end


end