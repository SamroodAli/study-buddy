class AddParticipantIdToCollaborations < ActiveRecord::Migration[6.1]
  def change
    add_column :collaborations, :participant_id, :integer
  end
end
