class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
