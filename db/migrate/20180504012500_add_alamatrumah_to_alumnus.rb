class AddAlamatrumahToAlumnus < ActiveRecord::Migration[5.1]
  def change
  	add_column :alumnus, :alamat_rumah, :string
  end
end
