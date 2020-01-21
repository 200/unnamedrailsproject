class CreateTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :tokens do |t|
      t.string :name
      t.string :ticker
      t.integer :hard_cap
      t.integer :precision
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
