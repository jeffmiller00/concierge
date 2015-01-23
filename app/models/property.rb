class Property < ActiveRecord::Base
  has_many :categories
  validates_formatting_of :website, using: :url
end
