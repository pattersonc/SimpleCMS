class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :title
      t.string :slug
      t.boolean :active
      t.text :content

      t.timestamps
    end
  end
end
