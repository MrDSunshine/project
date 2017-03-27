# Many to many connection between articles and their categories.
class PostCategory < ActiveRecord::Base
  belongs_to :post
  belongs_to :category
end
