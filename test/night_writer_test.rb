require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_dictionary
    night_writer = NightWriter.new

    assert_equal ["0.", "..", ".."], night_writer.dictionary["a"]
  end

  def test_it_can_translate_1_letter
    night_writer = NightWriter.new

    assert_equal "0.\n00\n..", File.read("test/test_braille.txt")
  end

  def test_it_can_translate_5_letters
    night_writer = NightWriter.new

    assert_equal "0.0.0.0.0.\n00.00.0..0\n....0.0.0.", File.read("test/test_braille2.txt")
  end

  def test_it_can_wrap_text
    night_writer = NightWriter.new
require 'pry'; binding.pry
    assert_equal ["................................................................................", "1"], night_writer.wrap("wrap_test.txt")
  end
end
