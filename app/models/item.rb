class Item < ActiveRecord::Base
  
belongs_to :customer, :class_name => 'Customer'
belongs_to :purchase, :class_name => 'Purchase'
validates_presence_of :price
validates_presence_of :description
validates_presence_of :customer_id
named_scope :delivered, :conditions => { :delivery_status => true }
named_scope :undelivered, :conditions => { :delivery_status => false }
named_scope :recharged, :conditions => { :recharge_status => true }
named_scope :unrecharged, :conditions => { :recharge_status => false }
end
