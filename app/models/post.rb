# App Article
class Post < ActiveRecord::Base
  belongs_to :user

  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :title, length: { in: 3..50 }
  validates :description, length: { in: 10..500 }
  validates :user_id, presence: true
end
