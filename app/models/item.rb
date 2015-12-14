class Item < ActiveRecord::Base
extend FriendlyId
friendly_id :name, use: [:slugged, :finders]

has_many :menu_items
has_many :menus, through: :menu_items
belongs_to :restaurant
belongs_to :user

validates_presence_of :name, :description, :price , :restaurant
validates_uniqueness_of :name

end
