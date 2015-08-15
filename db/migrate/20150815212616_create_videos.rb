class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :teacher_id
      t.string :embedded_url

      t.timestamps
    end
  end
end
