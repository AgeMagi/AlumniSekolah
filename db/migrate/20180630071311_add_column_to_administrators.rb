class AddColumnToAdministrators < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :sekretaris, :string
    add_column :administrators, :fotosekretaris, :string
  end
end
