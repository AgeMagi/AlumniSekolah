class ChangePenasihatFromAdministration < ActiveRecord::Migration[5.1]
  def change
    remove_column :administrators, :penasihat
    remove_column :administrators, :fotopenasihat
    add_column :administrators, :penasihat1, :string
    add_column :administrators, :fotopenasihat1, :string
    add_column :administrators, :penasihat2, :string
    add_column :administrators, :fotopenasihat2, :string
    add_column :administrators, :penasihat3, :string
    add_column :administrators, :fotopenasihat3, :string

  end
end
