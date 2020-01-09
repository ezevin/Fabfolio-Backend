class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :material

  has_many :materials
  has_many :supplies, through: :materials

end
