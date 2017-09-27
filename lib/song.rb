require 'pry'
class Song

  attr_accessor :artist, :name

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

end
