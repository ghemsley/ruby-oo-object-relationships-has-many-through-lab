class Song
  @@all = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    self.class.all.push(self)
  end

  def self.all
    @@all
  end
end
