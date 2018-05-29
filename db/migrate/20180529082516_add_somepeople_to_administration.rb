class AddSomepeopleToAdministration < ActiveRecord::Migration[5.1]
  def change
    add_column :administrators, :humas1, :string
    add_column :administrators, :fotohumas1, :string
    add_column :administrators, :humas2, :string
    add_column :administrators, :fotohumas2, :string
    add_column :administrators, :umum1, :string
    add_column :administrators, :fotoumum1, :string
    add_column :administrators, :umum2, :string
    add_column :administrators, :fotoumum2, :string
    add_column :administrators, :pk1, :string
    add_column :administrators, :fotopk1, :string
    add_column :administrators, :pk2, :string
    add_column :administrators, :fotopk2, :string
    add_column :administrators, :pk3, :string
    add_column :administrators, :fotopk3, :string
    add_column :administrators, :pk41, :string
    add_column :administrators, :fotopk41, :string
    add_column :administrators, :pk42, :string
    add_column :administrators, :fotopk42, :string
    add_column :administrators, :pk51, :string
    add_column :administrators, :fotopk51, :string
    add_column :administrators, :pk52, :string
    add_column :administrators, :fotopk52, :string
    add_column :administrators, :pk6, :string
    add_column :administrators, :fotopk6, :string
    add_column :administrators, :pk7, :string
    add_column :administrators, :fotopk7, :string
    add_column :administrators, :pk81, :string
    add_column :administrators, :fotopk81, :string
    add_column :administrators, :pk82, :string
    add_column :administrators, :fotopk82, :string
  end
end
