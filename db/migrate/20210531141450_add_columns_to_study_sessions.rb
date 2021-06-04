class AddColumnsToStudySessions < ActiveRecord::Migration[6.1]
  def change
    add_column :study_sessions, :duration_start, :datetime
    add_column :study_sessions, :duration_end, :datetime
  end
end
