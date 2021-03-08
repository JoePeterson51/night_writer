require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_read_message
    night_writer = NightWriter.new

    assert_equal "h", night_writer.read_file("test_message.txt")
  end

  def test_dictionary
    night_writer = NightWriter.new

    assert_equal "0.\n..\n..", night_writer.dictionary["a"]
  end

  def test_it_can_translate_1_letter
    night_writer = NightWriter.new

    assert_equal ["0.\n00\n.."], night_writer.translate
  end
end
