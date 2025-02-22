class Song
  attr_reader :name, :artist, :genre
  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    artist.songs << self
    genre.songs << self
    genre.artists << artist
    @@all << self
  end

  def self.all
    @@all
  end
end