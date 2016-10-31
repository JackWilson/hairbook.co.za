class HairDressersController < ApplicationController
  before_action :set_hair_dresser, only: [:show, :edit, :update, :destroy]

  # GET /hair_dressers
  # GET /hair_dressers.json
  def index
    @hair_dressers = HairDresser.all
  end

  # GET /hair_dressers/1
  # GET /hair_dressers/1.json
  def show
  end

  # GET /hair_dressers/new
  def new
    @hair_dresser = HairDresser.new
  end

  # GET /hair_dressers/1/edit
  def edit
  end

  # POST /hair_dressers
  # POST /hair_dressers.json
  def create
    @hair_dresser = HairDresser.new(hair_dresser_params)

    respond_to do |format|
      if @hair_dresser.save
        format.html { redirect_to @hair_dresser, notice: 'Hair dresser was successfully created.' }
        format.json { render :show, status: :created, location: @hair_dresser }
      else
        format.html { render :new }
        format.json { render json: @hair_dresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hair_dressers/1
  # PATCH/PUT /hair_dressers/1.json
  def update
    respond_to do |format|
      if @hair_dresser.update(hair_dresser_params)
        format.html { redirect_to @hair_dresser, notice: 'Hair dresser was successfully updated.' }
        format.json { render :show, status: :ok, location: @hair_dresser }
      else
        format.html { render :edit }
        format.json { render json: @hair_dresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hair_dressers/1
  # DELETE /hair_dressers/1.json
  def destroy
    @hair_dresser.destroy
    respond_to do |format|
      format.html { redirect_to hair_dressers_url, notice: 'Hair dresser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hair_dresser
      @hair_dresser = HairDresser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hair_dresser_params
      params.require(:hair_dresser).permit(:name, :logo_url, :status)
    end
end
