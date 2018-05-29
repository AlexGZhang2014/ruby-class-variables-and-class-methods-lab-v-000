class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    all_genres = self.genres
    all_genres.each do |genre|
      @@genre_count[genre] = 0
    end
    @genres.each do |genre|
      @@genre_count[genre] += 1
    end
    @@genre_count
  end
  
  def self.artist_count
    all_artists = self.artists
    all_artists.each do |artist|
      @@artist_count[artist] = 0
    end
    @artists.each do |artist|
      @@artist_count[artist] += 1
    end
    @@artist_count
  end
end