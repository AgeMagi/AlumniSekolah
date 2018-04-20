class AddcolumnEventidToParticipant < ActiveRecord::Migration[5.1]
  def change
    add_column :participants, :event_id, :integer
  end
end
