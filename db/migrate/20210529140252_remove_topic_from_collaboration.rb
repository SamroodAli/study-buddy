class RemoveTopicFromCollaboration < ActiveRecord::Migration[6.1]
  def change
    remove_column :collaborations, :topic, :integer
  end
end
