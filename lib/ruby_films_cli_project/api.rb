# responsible making a call to api
# getting the data necessary
# creating new RUBY objects with that data => Object oriented


class API
  def self.get_data
    response = RestClient.get('https://swapi.dev/api/films/')
    films_array = JSON.parse(response)["results"]
    films_array.each do |film|
      Film.new(film)
    end
    # binding.pry
  end

end