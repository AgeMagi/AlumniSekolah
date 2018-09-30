class AddNohpToParticipant < ActiveRecord::Migration[5.1]
  def change
    add_column :participants, :nohp, :integer
  end
end
