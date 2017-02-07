class ChangeProdIdtoBeerIdinCartedProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :beer_id
  end
end
