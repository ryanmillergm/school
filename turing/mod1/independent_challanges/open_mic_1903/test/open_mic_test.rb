require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

class OpenMicTest < MiniTest::Test

  def test_Open_Mic_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_instance_of OpenMic, open_mic
  end

  # def test_open_mic_location
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   assert_equal "Comedy Works", open_mic.location
  # end
  #
  # def test_open_mic_date
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   assert_equal date: "11-20-18", open_mic.date
  # end

  # def test_open_mic_performers
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   assert_equal [], open_mic.performers
  # end
  #
  # def test_instance_of_sal
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   sal = User.new("Sal")
  #   assert_instance_of User, sal
  # end
  #
  # def test_instance_of_ali
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   ali = User.new("Ali")
  #   assert_instance_of User, ali
  # end
  #
  # def test_open_mic_welcome_sal
  #   open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
  #   sal = User.new("Sal")
  #   assert_equal "Welcome #{user}!", open_mic.welcome(sal)
  #
  # end

end
