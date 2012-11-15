class CreateMeditationPosts < ActiveRecord::Migration
  def change
    create_table :meditation_posts do |t|
      t.string :length
      t.text :breath
      t.text :feeling
      t.integer :user_id

      t.timestamps
    end
  end
end
