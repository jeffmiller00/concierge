class ServiceProvider < ActiveRecord::Base
  belongs_to :user
  has_many :users
  has_and_belongs_to_many :categories
  validates_formatting_of :email, using: :email
end
