class AddTitleColumnToMeditationPost < ActiveRecord::Migration
  def change
  	add_column :meditation_posts, :title, :string
  end
end
