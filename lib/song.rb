class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end
end
