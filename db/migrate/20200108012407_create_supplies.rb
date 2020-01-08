class CreateSupplies < ActiveRecord::Migration[5.2]
  def change
    create_table :supplies do |t|
      t.string "label"
      t.integer "price", default: 0
      t.text "description"
      t.string "image_url", default: "https://image.shutterstock.com/image-vector/empty-background-style-png-blank-450w-676832590.jpg"
      t.string "place_purchased"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "quantity", default: 1

      t.timestamps
    end
  end
end
