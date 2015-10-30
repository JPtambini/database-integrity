class User < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :user_name, :email, :password, :password_confirmation
end
