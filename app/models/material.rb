class Material < ApplicationRecord
  belongs_to :project
  belongs_to :supply

  accepts_nested_attributes_for :supply
end
