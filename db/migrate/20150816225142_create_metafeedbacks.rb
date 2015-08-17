class CreateMetafeedbacks < ActiveRecord::Migration
  def change
    create_table :metafeedbacks do |t|
      t.boolean :specific
      t.boolean :actionable
      t.boolean :kind
      t.integer :feedback_id

      t.timestamps
    end
  end
end
