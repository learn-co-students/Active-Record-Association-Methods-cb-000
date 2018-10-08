class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  # This method returns the size of our artists array that is associated with the Genre class.
  # If an artist gets saved from the Song class as an attribute and that song is associated with our Genre class
  # This adds the artist into our artist array, thus making the size of our 'artists' array bigger.
  def artist_count
    self.artists.size
  end

  def song_count
    self.songs.size
  end

  def all_artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

end
