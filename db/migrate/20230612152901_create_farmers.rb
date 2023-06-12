class CreateFarmers < ActiveRecord::Migration[7.0]
  def change
    create_table :farmers do |t|
      t.string :farmer_name
      t.string :farmer_address
      t.string :farmer_contact
      t.string :farmer_county
      t.string :farmer_sub_county
      t.string :farmer_ward
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
