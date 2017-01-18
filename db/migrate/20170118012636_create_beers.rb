class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :brand
      t.string :style
      t.string :name
      t.string :package_size
      t.string :bottle_size
      t.string :rating_1to99
      t.string :price

      t.timestamps
    end
  end
end
