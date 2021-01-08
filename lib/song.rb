

class Song
    attr_accessor :name, :artist

    @@all = []
  
    def initialize (name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end
  
    def self.new_by_filename(filename)
        track = filename.split(" - ")[1]
        singer = filename.split(" - ")[0]
        #song = Song.new(track)
        # singer = Artist.new(artist_name)

        new_song = self.new(track)
        new_song.artist_name = singer
        new_song
    
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
      end
  end