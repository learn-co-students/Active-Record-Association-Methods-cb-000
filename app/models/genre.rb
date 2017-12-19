class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    all = []
    self.artists.each do |artist|
      all.push(artist.name)
    end
    all
  end
end
