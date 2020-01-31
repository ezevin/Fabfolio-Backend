class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "username"
      t.string "password_digest"
      t.string "name"
      t.string "profile_picture", default: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
      t.integer "age"
      t.text "about_me"

      t.timestamps
    end
  end
end
