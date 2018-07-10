class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    
    array = self.songs.map do |song|
      song.artist
    end
    array.uniq.size
  end

  def all_artist_names
    array = self.songs.map do |song|
      song.artist.name
    end
  end
end
