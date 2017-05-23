class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    return self.songs.first.genre
    #return the genre of the artist's first saved song
  end

  def song_count
    return self.songs.length
    #return the number of songs associated with the artist
  end

  def genre_count
    genres = []
    songs.each do |song|
      genres << song.genre
    end
    return genres.uniq.length
    #return the number of genres associated with the artist
  end
end
