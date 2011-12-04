class AddActiveToPages < ActiveRecord::Migration
  def change
    add_column :pages, :active, :bool, { :default => true }
  end
end
