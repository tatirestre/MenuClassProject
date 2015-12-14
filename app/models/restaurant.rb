class Restaurant < ActiveRecord::Base
has_many :items
has_many :users
validates_uniqueness_of :name
 
#Friendly ID code
extend FriendlyId
  friendly_id :name, use: [:slugged, :finders] 

# GeoCoder - Map View code:
geocoded_by :address
after_validation :geocode

 def address
 "#{street_line_1}, #{city}, #{state}"
 end
# end of Geocoder

end
