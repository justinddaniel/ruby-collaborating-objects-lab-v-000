require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).select{ |f| !File.directory? f}
  end

  def import
    @files.each do |f|
      Song.new_by_filename
    end
  end


end
