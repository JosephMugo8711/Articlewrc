require_relative 'article'
require_relative 'author'


class Magazine
    attr_reader :name, :category
    @@all = []
    
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
    
    def name=(new_name)
      @name = new_name
    end
    
    def category=(new_category)
      @category = new_category
    end
    
    # def articles
    #   Article.all.select { |article| article.magazine == self }
    # end
    
    # def article_titles
    #   articles.map { |article| article.title }
    # end
    
    # def contributing_authors
    #   Article.all.select { |article| article.magazine == self }
    #              .group_by { |article| article.author }
    #              .select { |author, articles| articles.size > 2 }
    #              .keys
    # end
  end