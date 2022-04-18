class CreateEndUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :end_users do |t|
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postcode
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :encrypted_password
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
