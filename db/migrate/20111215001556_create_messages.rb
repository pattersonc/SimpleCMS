class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.string :status
      t.string :ip
      t.timestamps
    end
  end
end
