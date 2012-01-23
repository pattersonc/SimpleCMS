class AddColumnsToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :from_email, :string
    add_column :messages, :from_name, :string
  end
end
