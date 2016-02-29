class AddCategoryIdToProductsAndServices < ActiveRecord::Migration
  def change
  	add_column :services, :category_id, :integer
  	add_column :products, :category_id, :integer
  end
end
