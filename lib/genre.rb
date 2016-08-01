class Genre
  attr_accessor :songs, :artists
  attr_reader :name

  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    self.songs<<song
    song.genre=self
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end