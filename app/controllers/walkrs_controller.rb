class WalkrsController < ApplicationController
  before_action :set_walkr, only: [:show, :edit, :update, :destroy]

  # GET /walkrs
  # GET /walkrs.json
  def index
    @walkrs = Walkr.all
  end

  # GET /walkrs/1
  # GET /walkrs/1.json
  def show
    @walkr = Walkr.find(params[:id])
  end

  # GET /walkrs/new
  def new
    @walkr = Walkr.new
  end

  # GET /walkrs/1/edit
  def edit
  end

  # POST /walkrs
  # POST /walkrs.json
  def create
    @walkr = Walkr.new(walkr_params)

    respond_to do |format|
      if @walkr.save
        format.html { redirect_to @walkr, notice: 'Walkr was successfully created.' }
        format.json { render :show, status: :created, location: @walkr }
      else
        format.html { render :new }
        format.json { render json: @walkr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /walkrs/1
  # PATCH/PUT /walkrs/1.json
  def update
    respond_to do |format|
      if @walkr.update(walkr_params)
        format.html { redirect_to @walkr, notice: 'Walkr was successfully updated.' }
        format.json { render :show, status: :ok, location: @walkr }
      else
        format.html { render :edit }
        format.json { render json: @walkr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walkrs/1
  # DELETE /walkrs/1.json
  def destroy
    @walkr.destroy
    respond_to do |format|
      format.html { redirect_to walkrs_url, notice: 'Walkr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walkr
      @walkr = Walkr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def walkr_params
      params.require(:walkr).permit(:name, :description, :picture, :rating, :email)
    end
end
