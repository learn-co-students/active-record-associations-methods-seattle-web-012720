class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.all.length == 0
      drake = Artist.create(name: "Drake")
      self.artist = drake
    else
      self.artist = Artist.all.find {|a| a.name == "Drake"}
    end
  #  binding.pry  
  # if Artist.all.find {|a| a.name == "Drake"} == true
  #   binding.pry
  # end
    # mystery_artist = Artist.all.find {|a| a.name == "Drake"}
    # # binding.pry
    # if defined?(mystery_artist)
    # #   # binding.pry
    #   drake = Artist.create(name: "Drake")
    # #   drake.save
    #   self.artist = drake
    # #   # self.artist = drake
    # else
    # #   binding.pry
    #   self.artist = drake
    # end
    # # mystery_artist.delete
    # binding.pry
    # self.artist
    # self.artist = drake
    # binding.pry
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*

  end
end