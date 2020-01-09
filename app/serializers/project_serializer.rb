class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :material, :inventory

  has_many :materials
  has_many :supplies, through: :materials
  has_many :inventories
  has_many :tools, through: :inventories

end
