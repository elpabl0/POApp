class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.integer :user_id
      t.date :purchase_date
      t.integer :supplier_id
      t.boolean :delivered_to_cust
      t.string :supplier_invoice_id

      t.timestamps
    end
  end

  def self.down
    drop_table :purchases
  end
end
