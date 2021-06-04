class RemoveParticipantsIdFromCollaborations < ActiveRecord::Migration[6.1]
  def change
    remove_column :collaborations, :participants_id, :string
  end
end
