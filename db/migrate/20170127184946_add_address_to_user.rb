class AddAddressToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
  end
end
