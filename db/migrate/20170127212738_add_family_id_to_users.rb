class AddFamilyIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_id, :integer, default: 0
  end
end
