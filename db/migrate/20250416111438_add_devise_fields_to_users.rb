class AddDeviseFieldsToUsers < ActiveRecord::Migration[7.0] # ou [8.0] selon ta version
  def change
    change_table :users, bulk: true do |t|
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      # Ajoute d'autres colonnes si tu en as besoin selon les modules Devise activés
    end

    add_index :users, :reset_password_token, unique: true
  end
end
