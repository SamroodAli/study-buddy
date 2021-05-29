class RemoveParticipantFromCollaborations < ActiveRecord::Migration[6.1]
  def change
    remove_column :collaborations, :participant, :string
  end
end
