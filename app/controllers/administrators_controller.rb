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
      format.html { render :new }
      format.json { render json: @administrator.errors, status: :unprocessable_entity }
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

  private
    def administrator_params
      params.require(:administrator).permit(:ketua1, :fotoketua1, :ketua2, :fotoketua2, 
         :bendahara1, :fotobendahara1, :bendahara2, :fotobendahara2, :pembina, :fotopembina, 
         :penasihat1, :fotopenasihat1, :penasihat2, :fotopenasihat2, :penasihat3, :fotopenasihat3,
         :humas1, :fotohumas1, :humas2, :fotohumas2, :umum1, :fotoumum1,
         :umum2, :fotoumum2, :pk1, :fotopk1, :pk2, :fotopk2, :pk3, :fotopk3, 
         :pk41, :fotopk41, :pk42, :fotopk42, :pk51, :fotopk51, :pk52, :fotopk52, :pk6, :fotopk6, :pk7, :fotopk7, 
         :pk81, :fotopk81, :pk82, :fotopk82, :text_pengantar, :sekretaris, :fotosekretaris)
    end
end