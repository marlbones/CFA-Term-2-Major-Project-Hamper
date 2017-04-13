class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.decimal :cost
      t.integer :collection, default: 0
      t.integer :items, default: 5
      t.text :contents
      t.boolean :perishables
      t.boolean :non_perishables
      t.text :description

      t.timestamps
    end
  end
end
