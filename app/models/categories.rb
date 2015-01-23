class Categories < ActiveRecord::Base
  belongs_to :property
  has_and_belongs_to_many :service_providers
end
