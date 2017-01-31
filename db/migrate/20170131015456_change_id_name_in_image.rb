class ChangeIdNameInImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :product_id, :beer_id
  end
end
