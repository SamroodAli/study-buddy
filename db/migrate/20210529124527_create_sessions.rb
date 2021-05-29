class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :group_id
      t.text :name
      t.time :duration

      t.timestamps
    end
  end
end
