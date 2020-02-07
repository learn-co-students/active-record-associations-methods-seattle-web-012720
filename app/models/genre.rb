require "pry"

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.artists.size
  end

  def all_artist_names
    all_songs = Genre.all.map { |genre|
      genre.songs
    }
    all_songs.map do |array_of_songs|
      array_of_songs.map { |song|
        song.artist.name
      }
    end.uniq[0]
    # return an array of strings containing every musician's name
  end
end
