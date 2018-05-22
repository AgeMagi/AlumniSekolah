class AddKatapengantarToAdministrator < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :text_pengantar, :text
  end
end
