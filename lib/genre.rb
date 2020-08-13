class Genre

  attr_accessor :name

  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def artists
  self.songs.map {|artist| artist.artist }
end

def songs
  Song.all.select {|songs| songs.genre == self }
end

end
