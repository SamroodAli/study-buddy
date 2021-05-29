class CreateCollaborations < ActiveRecord::Migration[6.1]
  def change
    create_table :collaborations do |t|
      t.integer :participant
      t.integer :topic

      t.timestamps
    end
  end
end
