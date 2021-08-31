class LoginInfo < ApplicationRecord
	has_one :profile
	has_many :users
end
