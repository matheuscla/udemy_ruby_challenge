class CreateFamilies < ActiveRecord::Migration[5.0]
  def change
    create_table :families do |t|

      t.timestamps
    end
  end
end
