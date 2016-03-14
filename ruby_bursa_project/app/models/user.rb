class User < ActiveRecord::Base
  has_secure_password

  has_many :petitions
  has_many :votes

  validates_uniqueness_of :email
  validates               :first_name, :last_name, :email, presence: true
end
