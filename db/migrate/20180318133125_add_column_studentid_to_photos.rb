class AddColumnStudentidToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :student_id, :integer
  end
end
