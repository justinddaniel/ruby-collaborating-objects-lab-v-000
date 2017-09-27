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

  def self.find_or_create_by_name(artist_name)
    findx = nil
    @@all.each do |a|
      if a.name == artist_name
        findx = a
      end
    end
    if findx == nil
      Artist.new(artist_name)
    else
      findx
    end
  end

end
