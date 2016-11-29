class Query < ActiveRecord::Base
  validates :dish_id, :presence => true
  belongs_to :dish
end
