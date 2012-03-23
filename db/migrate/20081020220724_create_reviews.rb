class CreateReviews < ActiveRecord::Migration
  def change
    create_table :spree_reviews do |t|
      t.string  :name, :location
      t.integer :rating
      t.text :review
      t.boolean :approved, :default => false
      
      t.references :product, :user
      
      t.timestamps
    end
  end
end
