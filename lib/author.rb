class Author 
  attr_accessor :name 
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author = self}
  end
  
  def add_song(song)
    @@song_count += 1 
    @songs << song 
    song.artist = self
  end
  
  def add_song_by_name(name)
    @@song_count += 1 
    @songs << song 
    song.artist = self 
  end
  
  def self.song_count
    @@songcount 
  end
end