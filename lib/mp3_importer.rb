class MP3Importer

  attr_accessor :test_music_path, :files

  def initialize(test_music_path)
    @test_music_path = test_music_path
    @files = []
  end

end
