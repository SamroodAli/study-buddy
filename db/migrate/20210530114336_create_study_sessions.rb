class CreateStudySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :study_sessions do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :name
      t.time :duration

      t.timestamps
    end
  end
end
