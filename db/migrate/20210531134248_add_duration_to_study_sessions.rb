class AddDurationToStudySessions < ActiveRecord::Migration[6.1]
  def change
    add_column :study_sessions, :duration, :integer
  end
end
