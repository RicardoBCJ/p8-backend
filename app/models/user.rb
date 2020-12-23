class User < ApplicationRecord
  has_secure_password
    
  has_many :help_requests

  validates :name, :email, presence: true
end
