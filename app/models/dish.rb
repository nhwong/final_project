class Dish < ActiveRecord::Base
  validates :dish, :presence => true
  has_many :queries
end
