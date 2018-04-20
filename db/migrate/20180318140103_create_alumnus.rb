class CreateAlumnus < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnus do |t|
      t.string :nama
      t.string :kelas

      t.timestamps
    end
  end
end
