class AdministratorsController < ApplicationController
  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.new(administrator_params)

    if @administrator.save
      flash[:success] = "Your Administrators successfully create"
      render administrator(@administrator)
    else
      render 'new'
    end
  end

  private
    def administrator_params
      params.require(:administrators).permit(:ketua1, :fotoketua1, :ketua2, :fotoketua2, :bendahara1, :fotobendahara1, :bendahara2, :fotobendahara2, :penasihat, :fotopenasihat)
    end
end