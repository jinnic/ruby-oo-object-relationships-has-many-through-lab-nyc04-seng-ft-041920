require('pry')
class Artist
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    #returns all songs associated with this Artist
    def songs
        #binding.pry
        Song.all.select{ |song| song.artist == self}
    end

    #has many genres, through songs
    def genres
        songs.collect{ |song| song.genre}
    end
end
