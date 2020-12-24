class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    @@all << self
    
  end
  
  def new_song(name)
    
    Song.new(name)
    Song.artist = self
    
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    songs.collect{song.genre}
  end
  
end