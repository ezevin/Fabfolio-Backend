class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :material, :inventory, :task

  has_many :materials
  has_many :supplies, through: :materials
  has_many :inventories
  has_many :tools, through: :inventories
  has_many :tasks
  has_many :notes

end
