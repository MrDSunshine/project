# Article categories, each article can have many categories
class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { in: 3..25 }
end
