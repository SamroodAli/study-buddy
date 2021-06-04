class Renamecolumns < ActiveRecord::Migration[6.1]
  def change
    rename_column :study_sessions, :group_id, :collection_id
    rename_column :memberships, :participating_group_id, :participating_collection_id
  end
end
