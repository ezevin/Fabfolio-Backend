class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer "project_id"
      t.integer "tool_id"

      t.timestamps
    end
  end
end
