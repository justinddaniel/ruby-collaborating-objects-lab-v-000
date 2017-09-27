class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def save 
    @@all << self
  end

end
