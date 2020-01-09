class Project < ApplicationRecord
  has_many :materials
  has_many :inventories
end
