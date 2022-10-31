class Author
  attr_accessor :name, :articles


  def initialize(name)
    @name = name
  
  end
  def articles
    Article.all.select do |article| article.author end
  end 
  def magazines
    magazine = Article.all.map do |article| article.magazine end
    magazine.uniq
  end
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
  def topic_areas
    topic = Magazine.all.map do |magazine| magazine.category end
    topic.uniq
  end
  
  


end
