class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :day
      t.time :time
      t.string :style
      t.integer :difficulty
      t.integer :meditative_guidance
      t.integer :personal_touch
      t.text :thoughts
      t.integer :teacher_id
      t.integer :user_id

      t.timestamps
    end
  end
end
