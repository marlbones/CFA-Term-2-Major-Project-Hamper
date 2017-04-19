class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about, :text
    add_column :users, :favs, :text
    add_column :users, :age, :integer
    add_column :users, :interests, :text
    add_column :users, :diet, :text
  end
end
