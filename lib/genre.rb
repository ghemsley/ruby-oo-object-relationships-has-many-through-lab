class Genre
  @@all = []
  attr_accessor :name
  def initialize(name)
    self.name = name
    self.class.all.push(self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end
end
