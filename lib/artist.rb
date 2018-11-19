class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
    @@all.reduce(0) { |count, artist| count + artist.songs.length }
  end
  
end