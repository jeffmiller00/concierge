class CreateCategoriesServiceProviders < ActiveRecord::Migration
  def change
    create_table :categories_service_providers do |t|
      t.belongs_to :categories, index: true
      t.belongs_to :service_provider, index: true
    end
  end
end
