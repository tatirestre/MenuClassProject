class Restaurant < ActiveRecord::Base

geocoded_by :address
after_validation :geocode

 def address
 "#{street_line_1}, #{city}, #{state}"
 end


end
