class NightWriter
  def initialize
  end

  def filename
    ARGV
  end

  def read_file(file_name)
    File.read(file_name).strip
  end

  def count
    text = File.read(filename[0])
    total_characters = text.strip.length
    puts "Created '#{filename[1]}' containing #{total_characters} characters"
    File.read(filename[0])
  end
end
