class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :details
      t.integer :client_id
      t.datetime :valid_to

      t.timestamps
    end
  end
end
