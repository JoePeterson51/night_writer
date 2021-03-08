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

    assert_equal "Created 'braille.txt' containing 256 characters", night_writer.read_file
  end

  def test_it_can_count_characters
    night_writer = NightWriter.new

    assert_equal "Created 'braille.txt' containing 12 characters", night_writer.count
  end
end
