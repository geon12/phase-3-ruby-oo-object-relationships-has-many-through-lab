class Genre
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
        Song.all.filter {|song| song.genre == self}
    end

    def artists
        self.songs.map {|song| song.artist}
    end
end
