class Menu < ActiveRecord::Base
extend FriendlyId
friendly_id :name, use: [:slugged, :finders]

belongs_to :restaurant
belongs_to :user

has_many :menu_items
has_many :items, through: :menu_items


validates_presence_of :name, :start_date, :end_date , :restaurant

end
