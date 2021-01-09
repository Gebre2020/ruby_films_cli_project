class CLI

  def start
    puts "Welcome to the film Lot, shop for a new film?"
    puts "Let's start with your name, please enter your name:"
    API.get_data
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