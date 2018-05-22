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

  def show
    @administrator = Administrator.find(params[:id])
  end

  def update
    @administrator = Administrator.find(params[:id])
    if (@administrator.update(administrator_params))
      flash[:success] = "Your Administrators successfully create"
      redirect_to administrators_path
    else
      render 'edit'
    end
  end

  def pengantar
    @administrator = Administrator.last
  end

  def isi_pengantar
    @administrator = Administrator.last
    @administrator.text_pengantar = params[:text_pengantar]
    @administrator.save
  end

  private
    def administrator_params
      params.require(:administrator).permit(:ketua1, :fotoketua1, :ketua2, :fotoketua2, :bendahara1, :fotobendahara1, :bendahara2, :fotobendahara2, :pembina, :fotopembina, :penasihat1, :fotopenasihat1, :penasihat2, :fotopenasihat2, :penasihat3, :fotopenasihat3)
    end
end