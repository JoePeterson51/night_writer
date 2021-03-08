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

    assert_equal "Created 'braille.txt' containing 256 characters", night_writer.read_file("test_message.txt")
  end
end
