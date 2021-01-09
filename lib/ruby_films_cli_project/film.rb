class Film

  @@all = []

  attr_accessor :title, :director, :producer

  def initialize(title, director, producer)
    @title = title
    @director = director
    @producer = producer
    save
    end 

  def save
    @@all << self
  end 
    
  def self.all
    @@all
  end

end