class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.decimal :price
      t.string :description
      t.integer :customer_id
      t.boolean :recharge_status
      t.boolean :delivery_status
      t.date :delivery_date
      t.integer :invoice_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
