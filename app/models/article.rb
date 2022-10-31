class Article
    attr_accessor :author, :magazine, :title
    @@all = []
    @@title = []
    def initialize(author, magazine, title)
        @@all << self
        @magazine = magazine
        @@title << title
        @author = author
        @title = title
    end
    def author
        @author.name
    end
    def magazine
        @magazine.name
    end
    def self.title
        @@title
    end
    def self.all
        @@all
    end

end
