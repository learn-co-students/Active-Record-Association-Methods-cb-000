class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  # return the first song, from an array of the artist's songs
  # def get_first_song
  #   self.songs.first
  # end

  #return the genre of the artist's first saved song
  def get_genre_of_first_song
    self.songs.first.genre
  end

  #return the number of songs associated with the artist
  def song_count
    self.songs.size
  end

  #return the number of genres associated with the artist
  def genre_count
    self.genres.size
  end
end
