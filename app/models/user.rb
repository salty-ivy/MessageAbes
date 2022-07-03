class User < ApplicationRecord
	has_many :messages
	has_secure_password

	validates :username, :presence => true
	validates :username, :length => {
		in: 5..21
	}


	VALID_EMAIL_REGEX = /\a\z/
	validates :email, :presence => true, uniqueness: {case_sensitive:false}
	validates :password, :presence => true, length:{
		minimum:7
	}

end
