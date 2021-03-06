class Artist
  attr_accessor :songs, :genres
  attr_reader :name

  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    self.songs<<song
    song.artist=self
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end
end