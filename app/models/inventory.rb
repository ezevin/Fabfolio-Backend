class Inventory < ApplicationRecord
  belongs_to :project
  belongs_to :tool
end
