class ChangeGroupToStudyGroups < ActiveRecord::Migration[6.1]
  def change
    rename_table :groups, :collections
  end
end
