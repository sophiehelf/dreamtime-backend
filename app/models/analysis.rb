class Analysis < ApplicationRecord
	belongs_to :dream, optional: true
	belongs_to :user, optional: true
end
