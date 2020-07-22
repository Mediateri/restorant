class DisrictsController < ApplicationController
  before_action :set_disrict, only: [:show, :edit, :update, :destroy]

  # GET /disricts
  # GET /disricts.json
  def index
    @disricts = Disrict.all
  end

  # GET /disricts/1
  # GET /disricts/1.json
  def show
  end

  # GET /disricts/new
  def new
    @disrict = Disrict.new
  end

  # GET /disricts/1/edit
  def edit
  end

  # POST /disricts
  # POST /disricts.json
  def create
    @disrict = Disrict.new(disrict_params)

    respond_to do |format|
      if @disrict.save
        format.html { redirect_to @disrict, notice: 'Disrict was successfully created.' }
        format.json { render :show, status: :created, location: @disrict }
      else
        format.html { render :new }
        format.json { render json: @disrict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disricts/1
  # PATCH/PUT /disricts/1.json
  def update
    respond_to do |format|
      if @disrict.update(disrict_params)
        format.html { redirect_to @disrict, notice: 'Disrict was successfully updated.' }
        format.json { render :show, status: :ok, location: @disrict }
      else
        format.html { render :edit }
        format.json { render json: @disrict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disricts/1
  # DELETE /disricts/1.json
  def destroy
    @disrict.destroy
    respond_to do |format|
      format.html { redirect_to disricts_url, notice: 'Disrict was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disrict
      @disrict = Disrict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disrict_params
      params.require(:disrict).permit(:name)
    end
end
