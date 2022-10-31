class Magazine
  attr_accessor :name, :category, :contributors

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end
  def self.all
    @@all
  end
  def contributors
    Author.map do |author| author.name end
  end
  def self.find_by_name(name)
    Magazine.all.find do |magazine| magazine.name end
  end
  def article_titles
    my_article = Article.all.filter do |article| article.magazine == self.name end
    my_article.map do |article| article.title end
  end
  def contributing_authors

  end


end
