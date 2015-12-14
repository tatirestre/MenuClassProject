class Menu < ActiveRecord::Base
extend FriendlyId
friendly_id :name, use: [:slugged, :finders]

has_many :menu_items
has_many :items, through: :menu_items
belongs_to :restaurant
belongs_to :user

validates_presence_of :name, :start_date, :end_date , :restaurant

end
