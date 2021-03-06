class Project < ApplicationRecord
  belongs_to :user
  has_many :materials
  has_many :supplies, through: :materials
  has_many :inventories
  has_many :tools, through: :inventories
  has_many :tasks
  has_many :notes
end
