class AddImageToBeerTable < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :image, :string
  end
end
