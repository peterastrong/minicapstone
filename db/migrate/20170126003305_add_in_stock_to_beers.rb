class AddInStockToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :in_stock, :boolean
  end
end
