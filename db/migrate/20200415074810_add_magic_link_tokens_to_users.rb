class AddMagicLinkTokensToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sign_in_token, :string
    add_column :users, :sign_in_token_sent_at, :string
  end
end