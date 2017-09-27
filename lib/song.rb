class Song

  attr_accessor :artist, :name

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

end
