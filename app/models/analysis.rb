class Analysis < ApplicationRecord
	belongs_to :dream
	has_one :user
end
