class Film

  @@all = []

  attr_accessor :title, :director, :producer, :release_date

#   def initialize(title, director, producer)
#     @title = title
#     @director = director
#     @producer = producer
#     @release_date = release_date
#     save
#   end

  # film_hash is the attributes
  # using meta programming method
  def initialize(film_hash)
    film_hash.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?("#{k}=")
    end
    save
  end

  def save
    @@all << self
  end 
    
  def self.all
    @@all
  end

  # a method that accepts the films name, and finds the object
  # with that title
  # class method 

  def self.find_film(selected_film)
    self.all.find do |film|
      film.title == selected_film
    end
  end

end