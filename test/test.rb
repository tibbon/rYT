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
  
  def test_link
    assert_equal("http://gdata.youtube.com/feeds/users/tibbon", @test_user.link)
  end
  
  def test_books
    assert_equal("1984", @test_user.books)
  end
  
  def test_gender
    assert_equal("m", @test_user.gender) 
  end
  
  def test_company
    assert_equal("imVOX (http://imvox.com)\nWeb Ecology Project (http://webecologyproject.org)\nAwesome Foundation (http://awesomefoundation.org)",
                  @test_user.company)
  end
  
  def test_hobbies
    assert_equal("Music", @test_user.hobbies) 
  end
  
  def test_hometown
    assert_equal("Greenboro, NC", @test_user.hometown)
  end
  
  def test_location
    assert_equal("Somerville, MA, US", @test_user.location) 
  end
  
  def test_movies
    assert_equal("Dune", @test_user.movies)
  end
  
  def test_music
    assert_equal("Radiohead", @test_user.music) 
  end
  
  def test_relationship
    assert_equal(nil, @test_user.relationship)
  end
  
  def test_occupation
    assert_equal("programmer", @test_user.occupation) 
  end
  
  def test_school
    assert_equal("Berklee College of Music", @test_user.school) 
  end
  
  def test_first_name
    assert_equal("David", @test_user.first_name)
  end
  
  def test_last_name
    assert_equal("Fisher", @test_user.last_name) 
  end
  
  def test_statistics
    assert_equal("2009-12-09T08:09:04.000-08:00", @test_user.statistics.lastWebAccess)
    assert_equal("26", @test_user.statistics.subscriberCount)
    assert_equal("6660", @test_user.statistics.videoWatchCount)
    assert_equal("3079", @test_user.statistics.viewCount)
  end
  
  
end