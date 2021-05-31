class RemoveUserIdFromStudySessions < ActiveRecord::Migration[6.1]
  def change
    remove_column :study_sessions, :user_id, :integer
  end
end
