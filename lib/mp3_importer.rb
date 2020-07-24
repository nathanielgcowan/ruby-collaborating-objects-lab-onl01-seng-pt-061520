class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}").collect{ |i| i.gsub("#{path}", "") }
  end

  def import
    files.each{|i| Song.new_by_filename(i)}
  end
end