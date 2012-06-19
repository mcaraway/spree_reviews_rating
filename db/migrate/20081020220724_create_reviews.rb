class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.string  :name, :location
      t.decimal :rating
      t.text :review
      t.boolean :approved, :default => false
      
      t.references :product, :user
      
      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
