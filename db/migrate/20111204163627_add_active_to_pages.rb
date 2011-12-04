class AddActiveToPages < ActiveRecord::Migration
  def change
    add_column :pages, :active, :boolean, { :default => true }
  end
end
