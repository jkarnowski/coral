class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :video_id
      t.integer :teacher_id
      t.text :content

      t.timestamps
    end
  end
end
