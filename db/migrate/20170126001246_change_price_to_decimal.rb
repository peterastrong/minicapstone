class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :beers, :price, "numeric USING CAST(price AS numeric)"
    change_column :beers, :price, :decimal, precision: 5, scale: 2
  end
end
