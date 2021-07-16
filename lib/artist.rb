class Artist
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.filter {|song| song.artist == self}
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres
        self.songs.map {|song| song.genre}
    end
end
