class Article < ApplicationRecord
    validates :category, presence: true, length: 2..20
    validates :title, presence: true, length: 3..100
    validates :author, presence: true, length: 2..20
    validates :content, presence: true, length: {maximum:1000}
    
    def self.categories
        records = Article.select(:category).group(:category).all
        categories = records.map {|p| p.category}
        categories.sort
    end
    
end