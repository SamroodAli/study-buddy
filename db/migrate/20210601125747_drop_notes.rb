class DropNotes < ActiveRecord::Migration[6.1]
  def change
    drop_table :notes
  end
end
