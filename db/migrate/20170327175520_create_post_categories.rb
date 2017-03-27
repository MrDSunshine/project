class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.references :post, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
    end
  end
end
