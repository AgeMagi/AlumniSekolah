class AdministratorsController < ApplicationController
  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.new(administrator_params)
    if @administrator.save
      flash[:success] = "Your Administrators successfully create"
      redirect_to administrators_path
    else
      render 'new'
    end
  end

  def index
    @administrator = Administrator.last
  end

  def edit
    @administrator = Administrator.find(params[:id])
  end

  def update
    @administrator = Administrator.find(params[:id])
    if (@administrator.update(administrator_params))
      flash[:success] = "Your Administrators successfully create"
      render 'index'
    else
      render 'edit'
    end
  end

  private
    def administrator_params
      params.require(:administrator).permit(:ketua1, :fotoketua1, :ketua2, :fotoketua2, :bendahara1, :fotobendahara1, :bendahara2, :fotobendahara2, :pembina, :fotopembina, :penasihat, :fotopenasihat)
    end
end