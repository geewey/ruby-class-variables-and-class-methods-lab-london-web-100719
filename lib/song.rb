class Song

    attr_accessor :name, :artist, :genre, :count, :genres, :artists

    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name

        @artist = artist
        @@artists << artist

        @genre = genre
        @@genres << genre
        
        @@count += 1
    end
    
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @genre_hash = Hash.new(0)
        @@genres.each { |genre| @genre_hash[genre] += 1 }
        @genre_hash
    end
    
    def self.artist_count
        @artist_hash = Hash.new(0)
        @@artists.each { |artist| @artist_hash[artist] += 1 }
        @artist_hash
    end
end