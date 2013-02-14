require 'rubygems'
require '../main.rb'

#### User Methods #####

#Inits a user
username = 'tibbon'
user = Youtube::User.new(username)

#Prints the various user data
# Many fields will often return as nil, because most users don't fill out their profiles
# All data except statistics is self reported, so may be blank or false

p user.username         # Username
p user.first_name       # First Name
p user.last_name        # Last Name
p user.age              # Age
p user.about            # About profile. Most return nil
p user.channel_title    # Title of User's Channel
p user.link
p user.books            # Favorite books, as listed in profile
p user.movies           # Favorite movies, as listed in profile
p user.music            # Favorite music, as listed in profile
p user.occupation       # Field of their job
p user.company          # Company name (multiple return as one text string)
p user.gender           # Gender. Just m/f
p user.hobbies          # Hobbies
p user.hometown         # Hometown location
p user.location         # Current location
p user.relationship     # I don't where on YT you fill this out.
p user.school           # School
p user.statistics.lastWebAccess   # Time last accessed YouTube via the web
p user.statistics.subscriberCount # Number of Subscribers they have
p user.statistics.videoWatchCount # How many videos they have watched
p user.statistics.viewCount       # Unsure. Think its how many times people have viewed their profile
