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
    Article.all.map do |article| article.author end.uniq
  end
  def self.find_by_name(name)
    Magazine.all.find do |magazine| magazine.name end
  end
  def my_article
    Article.all.filter do |article| article.magazine == self.name end
  end
  def article_titles
    my_article.map do |article| article.title end
  end
  def contributing_authors
    my_author = my_article.map do |article| article.author end
    my_uniq_author = my_author.uniq
    
    
    if my_author.count(my_uniq_author[0]) > 2
      my_uniq_author
    end
  end
  

end
