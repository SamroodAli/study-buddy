class AddParticipantsIdToCollaborations < ActiveRecord::Migration[6.1]
  def change
    add_column :collaborations, :participants_id, :integer
  end
end
