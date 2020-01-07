class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer "user_id"
      t.string "title"
      t.date "start_date", default: -> { "CURRENT_TIMESTAMP" }
      t.date "due_date", default: -> { "CURRENT_TIMESTAMP" }
      t.float "budget"
      t.boolean "finished", default: false
      t.text "details"
      t.string "finished_image", default: "https://images-na.ssl-images-amazon.com/images/I/51UW1849rJL._SX466_.jpg"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.timestamps
    end
  end
end
