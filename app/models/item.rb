class Item < ActiveRecord::Base
extend FriendlyId
friendly_id :name, use: [:slugged, :finders]

belongs_to :restaurant
belongs_to :user

validates_presence_of :name, :description, :price
validates_uniqueness_of :name

end
