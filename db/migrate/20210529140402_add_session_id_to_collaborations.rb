class AddSessionIdToCollaborations < ActiveRecord::Migration[6.1]
  def change
    add_column :collaborations, :session_id, :integer
  end
end
