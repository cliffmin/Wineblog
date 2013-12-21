class AddNameAndDescriptionToWines < ActiveRecord::Migration
  def change
  	add_column :wines, :name, :string
  	add_column :wines, :description, :string
  end
end
