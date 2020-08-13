class Song
  attr_reader :genre, :artist

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  # def genre
  #   @genre
  # end
  #
  # def artist
  #
  # end

end
