class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.integer :rubric_id
      t.integer :rating
      t.boolean :enabled
      t.text :description

      t.timestamps
    end
  end
end
