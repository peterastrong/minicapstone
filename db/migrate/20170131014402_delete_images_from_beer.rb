class DeleteImagesFromBeer < ActiveRecord::Migration[5.0]
  def change
    remove_column :beers, :image, :string 
  end
end
