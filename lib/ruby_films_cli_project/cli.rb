class CLI

  def start
    puts ""
    puts "Welcome to the film Lot, shop for a new film?"
    puts "Let's start with your name, please enter your name:"
    puts ""
    API.get_data
    # binding.pry
    greet(user_input)
  end

  def user_input
    gets.strip
  end

  def greet(name)
    puts ""
    puts "Awesome #{name}, would you like to see our films?"
    puts "Enter the input 'y' to see the list, 'exit' to leave the lot!"
    puts ""
    menu
  end

   # print out the list of all films
   def films_list
    Film.all.each.with_index(1) do |film, i|
      puts ""
      puts "#{i}. #{film.title}"
    end
    film_selection
  end

  def goodbye
    puts "Hopefully you'll come back! Have a nice day!"
    exit
  end

  def invalid
    puts ""
    puts "The selected input doesn't seem valid input, try again!"
    puts ""
    puts "please enter the correct Input 'y' or 'exit' and try again!"
    puts ""
    menu
  end

  def film_selection
    puts ""
    puts "Select a film title for more detail"

    selected_film = user_input 
    film = Film.find_film(selected_film)
    film_details(film)
  end

  # we'll query our Film class to find the films detail

  def film_details(film)
    if film.nil?
      invalid
    else 
      puts ""
      puts ""
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "Title: #{film.title}"
      puts "Director: #{film.director}"
      puts "Producer: #{film.producer}"
      puts "Release_Date: #{film.release_date}"
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "To see the list again enter 'y' or 'exit' to leave the lot!"
      puts ""
    end
    menu
  end

   # based on user selection, either show a list of films,
  # give them an error message, or
  # exit
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
