class RestorasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_restora, only: [:show, :edit, :update, :destroy]


  def index
    if params[:term]
      @restoras = Restora.where('location LIKE ?', "%#{params[:term]}%" )
    else
      @restoras = Restora.order('created_at DESC')
    end
    
  end

  def show
  end

  def new
    @restora = current_user.restoras.build
    @restora.break_fasts.build 
    @restora.lunches.build 
  end

  def edit
  end

  def create
    @restora = current_user.restoras.build(restora_params)

    respond_to do |format|
      if @restora.save
        format.html { redirect_to @restora, notice: 'Restora was successfully created.' }
        format.json { render :show, status: :created, location: @restora }
      else
        format.html { render :new }
        format.json { render json: @restora.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @restora.update(restora_params)
        format.html { redirect_to @restora, notice: 'Restora was successfully updated.' }
        format.json { render :show, status: :ok, location: @restora }
      else
        format.html { render :edit }
        format.json { render json: @restora.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @restora.destroy
    respond_to do |format|
      format.html { redirect_to restoras_url, notice: 'Restora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_restora
      @restora = Restora.find(params[:id])
    end
    def restora_params
      params.require(:restora).permit(:name, :location, :image, :image_cache, :description,  break_fasts_attributes: [:id, :item, :cost],  lunches_attributes: [:id, :item, :cost])
    end
end
