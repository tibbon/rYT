require '../main.rb'
require 'test/unit' 

class TestYoutube < Test::Unit::TestCase
  def setup
    @test_user = Youtube::User.new('tibbon')
  end

  def teardown
    # blank
  end
  
  def test_username
    assert_equal('Tibbon', @test_user.username)
  end
  
  def test_profile
    assert_equal('Tibbon Channel', @test_user.profile["title"])
  end
  
  def test_age
    assert_equal("27", @test_user.age)
  end
  
  def test_about
    assert_equal(nil, @test_user.about)
  end
  
  def test_channel_title
    assert_equal("Tibbon Channel", @test_user.channel_title)
  end
end