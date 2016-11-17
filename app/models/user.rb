# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
	has_secure_password
	has_many :posts
	# validates :email, :presence => true
	# validates :name, :presence => true, :length => {:minimum => 2}
	# validates :email, :presence => true, :uniqueness => true
end
