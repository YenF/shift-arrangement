class Person < ActiveRecord::Base
	include RankedModel
	ranks :position
	has_one :shift
end
