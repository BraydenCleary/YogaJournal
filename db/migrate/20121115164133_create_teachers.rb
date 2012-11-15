class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :image_url
      t.text :biography

      t.timestamps
    end
  end
end
