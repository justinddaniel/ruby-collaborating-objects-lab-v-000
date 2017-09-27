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
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
