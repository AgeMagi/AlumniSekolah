class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :nama
      t.string :email
      t.string :nohp
      t.string :kelas

      t.timestamps
    end
  end
end
