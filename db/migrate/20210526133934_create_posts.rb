class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string   :post_title, null: false
      t.integer  :user_id, null: false
      t.string   :post_image_id, null: false
      t.text   :post_introduction
      t.integer :prefecture, null: false, default: 0
      t.timestamps
    end
  end
end
