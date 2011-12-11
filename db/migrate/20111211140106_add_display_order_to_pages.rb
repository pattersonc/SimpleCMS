class AddDisplayOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :display_order, :int, { :default => 0 }
  end
end
