class AddDatetoMeditationPost < ActiveRecord::Migration
  def change
  	add_column :meditation_posts, :date, :date
  end
end
