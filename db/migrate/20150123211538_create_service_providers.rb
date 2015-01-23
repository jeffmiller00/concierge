class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :email
      t.references :user, index: true

      t.timestamps
    end
  end
end
