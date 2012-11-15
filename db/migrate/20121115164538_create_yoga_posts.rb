class CreateYogaPosts < ActiveRecord::Migration
  def change
    create_table :yoga_posts do |t|
      t.text :intention
      t.text :breath
      t.text :feeling
      t.integer :user_id

      t.timestamps
    end
  end
end
