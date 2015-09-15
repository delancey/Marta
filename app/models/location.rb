class Location < ActiveRecord::Base

	geocoded_by :my_location
	after_validation :geocode

	#Behind the scenses combining address and city given by User, and ding state because operation is restricted to GA and geocode that

def my_location
	"#{address}, #{city}, GA"
end

end
