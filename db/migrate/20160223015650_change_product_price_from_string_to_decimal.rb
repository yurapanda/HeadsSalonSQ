class ChangeProductPriceFromStringToDecimal < ActiveRecord::Migration
  def change
  	 change_column :products, :price, :decimal
  end
end
