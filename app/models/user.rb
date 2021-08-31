class User < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :age

	has_many :posts
	has_many :doctor_users
	has_many :doctors, through: :doctor_users

	before_create :before_callback
	after_create_commit :send_welcome_email
	after_create_commit :update_active_status
	after_destroy :call_destroy

	def send_welcome_email
		puts "send_welcome_email"
	end

	def update_active_status
		puts "update_active_status"
	end

	def before_callback
		puts "before_callback"
	end

	def call_destroy
		puts "hello"
	end
end		
