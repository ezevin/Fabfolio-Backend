class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer "project_id"
      t.string "item"
      t.boolean "complete", default: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "process_pic", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"

      t.timestamps
    end
  end
end
