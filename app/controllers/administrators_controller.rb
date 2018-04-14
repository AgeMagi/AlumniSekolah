class AdministratorsController < ApplicationController
  def new
    @administrator = Administrator.new
  end

  def create
    debugger
    @administrator = Administrator.new(administrator_params)

    if @administrator.save
      flash[:success] = "Your Administrators successfully create"
      render administrators_path
    else
      render 'new'
    end
  end

  def index
    @administrator = Administrator.all
  end

  private
    def administrator_params
      params.require(:administrator).permit(:ketua1, :fotoketua1, :ketua2, :fotoketua2, :bendahara1, :fotobendahara1, :bendahara2, :fotobendahara2, :pembina, :fotopembina, :penasihat, :fotopenasihat)
    end
end