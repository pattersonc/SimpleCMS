class PagesChangeContentTypeToText < ActiveRecord::Migration
  def up
    change_table :pages do |t|
      t.change :content, :text
    end
  end

  def down
  end
end
