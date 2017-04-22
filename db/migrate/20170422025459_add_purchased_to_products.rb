class AddPurchasedToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :purchased, :boolean, default: false
  end
end
