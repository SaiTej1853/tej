class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :SKU_ID
      t.decimal :price
      t.string :expire_date

      t.timestamps
    end
  end
end
