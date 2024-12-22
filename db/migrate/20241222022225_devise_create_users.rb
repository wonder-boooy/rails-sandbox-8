# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string   :last_name,          null: false # 氏
      t.string   :first_name,         null: false # 名
      t.string   :username,           null: false # ユーザー名
      t.string   :email,              null: false # devise: メールアドレス"
      t.string   :phone                           # 電話番号"
      t.string   :zip_code                        # 郵便番号"
      t.string   :address                         # 住所"

      t.string   :encrypted_password, null: false, default: "" # devise: パスワード"
      t.datetime :remember_created_at                          # devise: ログイン情報記憶"
      t.string   :reset_password_token                         # devise: パスワードリセットトークン"
      t.integer  :sign_in_count,      null: false, default: 0  # devise: ログイン回数"
      # t.datetime :current_sign_in_at
      # t.string   :current_sign_in_ip
      # t.datetime :last_sign_in_at
      # t.string   :last_sign_in_ip
      # t.datetime :reset_password_sent_at
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable
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
