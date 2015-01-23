class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :default_order
      t.references :property, index: true

      t.timestamps
    end
  end
end
