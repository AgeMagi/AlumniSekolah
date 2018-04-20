class Addkelas123Alumnus < ActiveRecord::Migration[5.1]
  def change
    remove_column :alumnus, :kelas
    add_column :alumnus, :kelas1, :string
    add_column :alumnus, :kelas2, :string
    add_column :alumnus, :kelas3, :string
  end
end
