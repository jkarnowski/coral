class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|
      t.integer :video_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
