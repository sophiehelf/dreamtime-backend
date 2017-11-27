class Dream < ApplicationRecord
	belongs_to :user, optional: true
	has_many :analyses
end
