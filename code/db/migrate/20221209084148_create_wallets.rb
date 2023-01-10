class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.string :user
      t.string :azione
      t.integer :quantità

      t.timestamps
    end
  end
end
