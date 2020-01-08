class ProjectSerializer < ActiveModel::Serializer
  attributes :id

  has_many :supplies, through: :materials
end
