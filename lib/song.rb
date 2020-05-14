               
class Song
    
    @@all = []
    attr_accessor :name, :artist, :genre

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    # #belongs to Genre => using attribute accessor :genre
    # def genre
    # end

    # #belongs to Artist => using attribute accessor :artist
    # def artist  
    # end
    
end