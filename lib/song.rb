require 'pry'
class Song

  attr_accessor :artist, :name

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    new_song_name = file_name.split(" - ")[1]
    binding.pry
    new_artist = file_name.split(" - ")[0]
    Song.new(new_song_name, new_artist)
  end

end
