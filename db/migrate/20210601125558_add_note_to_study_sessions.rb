class AddNoteToStudySessions < ActiveRecord::Migration[6.1]
  def change
    add_column :study_sessions,:note,:string
  end
end
