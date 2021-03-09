class NightWriter
  attr_reader :dictionary, :filename, :braille, :split_message, :translation
  def initialize
    @filename = ARGV
    @split_message = []
    @translation = []
    @braille = File.new(filename[1], "w")
    @dictionary = {
                   "a" => ["0.", "..", ".."],
                   "b" => ["0.", "0.", ".."],
                   "c" => ["00", "..", ".."],
                   "d" => ["00", ".0", ".."],
                   "e" => ["0.", ".0", ".."],
                   "f" => ["00", "0.", ".."],
                   "g" => ["00", "00", ".."],
                   "h" => ["0.", "00", ".."],
                   "i" => [".0", "0.", ".."],
                   "j" => [".0", "00", ".."],
                   "k" => ["0.", "..", "0."],
                   "l" => ["0.", "0.", "0."],
                   "m" => ["00", "..", "0."],
                   "n" => ["00", ".0", "0."],
                   "o" => ["0.", ".0", "0."],
                   "p" => ["00", "0.", "0."],
                   "q" => ["00", "00", "0."],
                   "r" => ["0.", "00", "0."],
                   "s" => [".0", "0.", "0."],
                   "t" => [".0", "00", "0."],
                   "u" => ["0.", "..", "00"],
                   "v" => ["0.", "0.", "00"],
                   "w" => [".0", "00", ".0"],
                   "x" => ["00", "..", "00"],
                   "y" => ["00", ".0", "00"],
                   "z" => ["0.", ".0", "00"],
                   " " => ["..", "..", ".."]
                 }
  end


  def count
    text = File.read(filename[0])
    total_characters = text.strip.length
    puts "Created '#{filename[1]}' containing #{total_characters} characters"
  end

  def split_message
    @split_message = File.read(filename[0]).chomp.split("")
  end

  def translate
    @split_message.map do |letter|
      @split_message[0]
    @dictionary.map do |key, value|
        if key == letter
          @translation << value
        end
      end
    end
  end

  def print_braille
    @translation.each do |line|
      @braille.print(line[0])
    end
    @braille.print"\n"
    @translation.each do |line|
      @braille.print(line[1])
    end
    @braille.print"\n"
    @translation.each do |line|
      @braille.print(line[2])
    end
  end



  def wrap(filename)

    text = File.read(filename)
    text.scan(/.{1,5}/).join("\n")
    # text.scan(/.{1,5}/)
    # require 'pry'; binding.pry
  end
end
