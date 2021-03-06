# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :premission, null: false, default: ""
      
      t.text :tbasis, null: false, default: ""
      t.text :tinduction, null: false, default: ""
      t.text :tproof, null: false, default: ""
      t.text :a1basis, null: false, default: ""
      t.text :a1induction, null: false, default: ""
      t.text :a1proof, null: false, default: ""
      t.string :a1grade, null: false, default: "-1"
      t.string :a1ot, null: false, default: "0"
      t.text :a2basis, null: false, default: ""
      t.text :a2induction, null: false, default: ""
      t.text :a2proof, null: false, default: ""
      t.string :a2grade, null: false, default: "-1"
      t.string :a2ot, null: false, default: "0"
      t.text :a3basis, null: false, default: ""
      t.text :a3induction, null: false, default: ""
      t.text :a3proof, null: false, default: ""
      t.string :a3grade, null: false, default: "-1"
      t.string :a3ot, null: false, default: "0"
      t.text :a4basis, null: false, default: ""
      t.text :a4induction, null: false, default: ""
      t.text :a4proof, null: false, default: ""
      t.string :a4grade, null: false, default: "-1"
      t.string :a4ot, null: false, default: "0"
      t.text :a5basis, null: false, default: ""
      t.text :a5duction, null: false, default: ""
      t.text :a5proof, null: false, default: ""
      t.string :a5grade, null: false, default: "-1"
      t.string :a5ot, null: false, default: "0"
     
      #Google 
      t.string :provider, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :uid, null: false, default: ""
      t.string :encrypted_tamu_uin, null: false, default: ""
      t.string :class_section, null: false, default: ""
      t.string :tgrade, null: false, default: ""
      t.string :grade, null: false, default: "-1"
      t.text :assignments, null: false, array: true, default: []
      
      
      
      
      

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
