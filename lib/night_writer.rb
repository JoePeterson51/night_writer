class NightWriter
  def initialize
    @filename = ARGV
  end

  def filename
    ARGV
  end

  def read_file
    File.read("message.txt").strip
  end

  def count
    text = File.read("message.txt").strip
    total_characters = text.strip.length
    puts "Created 'braille.txt' containing #{total_characters} characters"
    File.read("message.txt").strip
  end

end
