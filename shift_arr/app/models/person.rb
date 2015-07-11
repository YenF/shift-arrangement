class Person < ActiveRecord::Base
	include RankdedModel
	ranks :row_order
	has_one :shift
end
