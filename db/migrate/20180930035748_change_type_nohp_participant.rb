class ChangeTypeNohpParticipant < ActiveRecord::Migration[5.1]
  def change
    change_column :participants, :nohp, :string
  end
end
