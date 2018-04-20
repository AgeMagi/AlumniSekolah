class AddcolumnTanggaldilaksanakanToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :dilaksanakan, :date
  end
end
