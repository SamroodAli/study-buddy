class RemoveSessionIdFromCollaborations < ActiveRecord::Migration[6.1]
  def change
    remove_column :collaborations, :session_id, :integer
  end
end
