class RemoveNameFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :name
  end
end
