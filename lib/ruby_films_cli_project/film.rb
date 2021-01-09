class Film

  @@all = []

  attr_accessor :title, :director, :producer

#   def initialize(title, director, producer)
#     @title = title
#     @director = director
#     @producer = producer
#     save
#   endexit


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

  def self.find_film(film_title)
    self.all.find do |film|
      film.title == film_title
    end
  end

end