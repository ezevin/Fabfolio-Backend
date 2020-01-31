class User < ApplicationRecord
  has_many :projects
  has_many :tools
  has_many :supplies

  has_secure_password
end
