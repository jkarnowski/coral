class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :grade_level
      t.string :subject

      t.timestamps
    end
  end
end
