class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    @songs << Song.new(name)
    add_song(@songs.last)
  end
  
  def self.song_count
    
  
end