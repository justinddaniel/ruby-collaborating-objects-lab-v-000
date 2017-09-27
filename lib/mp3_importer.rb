class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir.glob(path).select{ |e| File.file? e }
  end


end
