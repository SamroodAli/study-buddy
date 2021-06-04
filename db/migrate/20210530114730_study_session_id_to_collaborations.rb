class StudySessionIdToCollaborations < ActiveRecord::Migration[6.1]
  def change
    add_column :collaborations, :study_session_id, :integer
  end
end
