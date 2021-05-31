class AddAuthorIdToStudySessions < ActiveRecord::Migration[6.1]
  def change
    add_column :study_sessions, :author_id, :integer
  end
end
