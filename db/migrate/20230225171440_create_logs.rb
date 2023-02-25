class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :date
      t.string :body
      t.integer :user_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
