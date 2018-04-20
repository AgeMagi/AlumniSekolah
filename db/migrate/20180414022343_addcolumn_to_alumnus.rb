class AddcolumnToAlumnus < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnus, :email, :string
    add_column :alumnus, :nohp, :string
  end
end
