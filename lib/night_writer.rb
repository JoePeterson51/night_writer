class NightWriter
  attr_reader :dictionary, :filename
  def initialize
    @filename = ARGV
    @dictionary = {
                   "a" => "0.\n..\n..",
                   "b" => "0.\n0.\n..",
                   "c" => "00\n..\n..",
                   "d" => "00\n.0\n..",
                   "e" => "0.\n.0\n..",
                   "f" => "00\n0.\n..",
                   "g" => "00\n00\n..",
                   "h" => "0.\n00\n..",
                   "i" => ".0\n0.\n..",
                   "j" => ".0\n00\n..",
                   "k" => "0.\n..\n0.",
                   "l" => "0.\n0.\n0.",
                   "m" => "00\n..\n0.",
                   "n" => "00\n.0\n0.",
                   "o" => "0.\n.0\n0.",
                   "p" => "00\n0.\n0.",
                   "q" => "00\n00\n0.",
                   "r" => "0.\n00\n0.",
                   "s" => ".0\n0.\n0.",
                   "t" => ".0\n00\n0.",
                   "u" => "0.\n..\n00",
                   "v" => "0.\n0.\n00",
                   "w" => ".0\n00\n.0",
                   "x" => "00\n..\n00",
                   "y" => "00\n.0\n00",
                   "z" => "0.\n.0\n00",
                   " " => "..\n..\n.."
                 }
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

  def translate

    new_dictionary = {
                      "h" => ["0.", "00", ".."],
                      "e" => ["0.", ".0", ".."],
                      "l" => ["0.", "0.", "0."],
                      "o" => ["0.", ".0", "0."]
                    }

    translation = File.new("braille.txt", "w")
    original = File.open("message.txt")
    message = []
    braille = []

    while (line = original.gets)
      message << line.chomp
    end

    broken = message.flat_map do |line|
      line.split("")
    end

    broken.map do |letter|
      broken[0]
    new_dictionary.map do |key, value|
        if key == letter
          braille << value
        end
      end
    end



    braille.map do |letter|
      letter.map do |line|

      end
    end


    braille.each do |line|
      translation.puts(line)
    end
  end
end
