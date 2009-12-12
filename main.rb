require 'rubygems'
require 'httparty'
require 'forwardable'
gem 'hashie', '~> 0.1.3'
require 'hashie'

module Youtube
  class Base
    def self.get_video(id)
      response = HTTParty.get("http://gdata.youtube.com/feeds/videos/#{id}", :format => :xml)
      Hashie::Mash.new(response)
    end
  
    def self.get_video_comments(id)
      response = HTTParty.get("http://gdata.youtube.com/feeds/videos/#{id}/comments", :format => :xml)
      Hashie::Mash.new(response).feed.entry
    end
  
    def self.get_all_comment_text(id)
      response = self.get_video_comments(id)
      Hashie::Mash.new(response).feed.entry.inspect
    end
  end
  
  class Video
  end
  
  class User
    include HTTParty
    include Enumerable
    
    def initialize(username)
      @username = username
      @response = HTTParty.get("http://gdata.youtube.com/feeds/users/#{@username}", :format => :xml)
    end

    def profile
      Hashie::Mash.new(@response).entry
    end

    def username
      Hashie::Mash.new(@response).entry["yt:username"]
    end
    
    def age
      Hashie::Mash.new(@response).entry["yt:age"]
    end

    def about
      Hashie::Mash.new(@response).entry["yt:aboutME"]
    end    
    
    def channel_title
      Hashie::Mash.new(@response).entry["title"]
    end
    
    def link
      Hashie::Mash.new(@response).entry["author"]["uri"]
    end
    
    def books
      Hashie::Mash.new(@response).entry["yt:books"]
    end
    
    def gender
      Hashie::Mash.new(@response).entry["yt:gender"]
    end
    
    def company
      Hashie::Mash.new(@response).entry["yt:company"]
    end
    
    def hobbies
      Hashie::Mash.new(@response).entry["yt:hobbies"]
    end
    
    def hometown
      Hashie::Mash.new(@response).entry["yt:hometown"]
    end
    
    def location
      Hashie::Mash.new(@response).entry["yt:location"]
    end
    
    def movies
      Hashie::Mash.new(@response).entry["yt:movies"]
    end
    
    def music
      Hashie::Mash.new(@response).entry["yt:music"]
    end
    
    def relationship
      Hashie::Mash.new(@response).entry["yt:relationship"]
    end
    
    def occupation
      Hashie::Mash.new(@response).entry["yt:occupation"]
    end
    
    def school
      Hashie::Mash.new(@response).entry["yt:school"]
    end  
    
    def first_name
      Hashie::Mash.new(@response).entry["yt:firstName"]
    end
    
    def last_name
      Hashie::Mash.new(@response).entry["yt:lastName"]
    end
    
    def statistics
      Hashie::Mash.new(@response).entry["yt:statistics"]
    end
    
  end
  
  class Comment
  end
  
end
