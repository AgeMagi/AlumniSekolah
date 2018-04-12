class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :ketua1
      t.string :fotoketua1
      t.string :ketua2
      t.string :fotoketua2
      t.string :bendahara1
      t.string :fotobenahara1
      t.string :bendahara2
      t.string :fotobendahara2
      t.string :pembina
      t.string :fotopembina
      t.string :penasihat
      t.string :fotopenasihat
    end
  end
end
