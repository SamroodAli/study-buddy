class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.string :title
      t.integer :user_id
      t.integer :collection_id

      t.timestamps
    end
  end
end
