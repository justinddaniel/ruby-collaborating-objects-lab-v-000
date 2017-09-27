class Song

  attr_accessor :artist, :name

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    Song.new(file_name)
  end
  
end
