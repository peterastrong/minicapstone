class CreateBeerCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :beer_categories do |t|
      t.integer :beer_id
      t.integer :category_id 

      t.timestamps
    end
  end
end
