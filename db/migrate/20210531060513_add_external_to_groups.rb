class AddExternalToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :external, :boolean, default: false
  end
end
