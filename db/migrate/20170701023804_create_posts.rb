class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :sub_category_id
      t.timestamps
    end
  end
end
