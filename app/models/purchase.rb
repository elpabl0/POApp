class Purchase < ActiveRecord::Base
has_many :items, :dependent => :destroy
belongs_to :user, :class_name => 'User'
belongs_to :supplier, :class_name => 'Supplier'
validates_presence_of :user_id
validates_presence_of :purchase_date
validates_presence_of :supplier_id
accepts_nested_attributes_for :items, :allow_destroy => true
end
