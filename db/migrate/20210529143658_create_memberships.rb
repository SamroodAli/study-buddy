class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :participating_group_id
      t.integer :member_id

      t.timestamps
    end
  end
end
