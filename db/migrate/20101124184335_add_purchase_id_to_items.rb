class AddPurchaseIdToItems < ActiveRecord::Migration
  def self.up
   add_column :items, :purchase_id, :integer
  end

  def self.down
  end
end
