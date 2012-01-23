class RenameWidgetsToPosts < ActiveRecord::Migration
  def change
    rename_table :widgets, :posts
  end
end
