class User < ApplicationRecord
	has_many :dreams
	has_many :analyses
end
