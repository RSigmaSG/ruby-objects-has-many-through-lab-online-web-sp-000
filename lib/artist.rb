class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    @@all << self
    
  end
  
  def self.all
    
    @@all
    
  end
  
  def new_song(name)
    
    Song.new(name).artist = self
    
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    songs.collect{song.genre}
  end
  
end