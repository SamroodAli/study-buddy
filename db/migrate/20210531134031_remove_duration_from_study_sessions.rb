class RemoveDurationFromStudySessions < ActiveRecord::Migration[6.1]
  def change
    remove_column :study_sessions, :duration
  end
end
