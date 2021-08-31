class Doctor < ApplicationRecord
	has_many :doctor_users
	has_many :users, through: :doctor_users

end
