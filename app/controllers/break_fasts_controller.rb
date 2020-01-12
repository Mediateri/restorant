class BreakFastsController < ApplicationController
  before_action :set_break_fast, only: [:show, :edit, :update, :destroy]

  # GET /break_fasts
  # GET /break_fasts.json
  def index
    @break_fasts = BreakFast.all
  end

  # GET /break_fasts/1
  # GET /break_fasts/1.json
  def show
  end

  # GET /break_fasts/new
  def new
    @break_fast = BreakFast.new
  end

  # GET /break_fasts/1/edit
  def edit
  end

  # POST /break_fasts
  # POST /break_fasts.json
  def create
    @break_fast = BreakFast.new(break_fast_params)

    respond_to do |format|
      if @break_fast.save
        format.html { redirect_to @break_fast, notice: 'Break fast was successfully created.' }
        format.json { render :show, status: :created, location: @break_fast }
      else
        format.html { render :new }
        format.json { render json: @break_fast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /break_fasts/1
  # PATCH/PUT /break_fasts/1.json
  def update
    respond_to do |format|
      if @break_fast.update(break_fast_params)
        format.html { redirect_to @break_fast, notice: 'Break fast was successfully updated.' }
        format.json { render :show, status: :ok, location: @break_fast }
      else
        format.html { render :edit }
        format.json { render json: @break_fast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /break_fasts/1
  # DELETE /break_fasts/1.json
  def destroy
    @break_fast.destroy
    respond_to do |format|
      format.html { redirect_to break_fasts_url, notice: 'Break fast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_break_fast
      @break_fast = BreakFast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def break_fast_params
      params.require(:break_fast).permit(:item, :cost, :restora_id)
    end
end
