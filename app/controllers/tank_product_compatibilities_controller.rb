class TankProductCompatibilitiesController < ApplicationController
  before_action :set_tank_product_compatibility, only: [:show, :edit, :update, :destroy]

  # GET /tank_product_compatibilities
  # GET /tank_product_compatibilities.json
  def index
    @tank_product_compatibilities = TankProductCompatibility.all
  end

  # GET /tank_product_compatibilities/1
  # GET /tank_product_compatibilities/1.json
  def show
  end

  # GET /tank_product_compatibilities/new
  def new
    @tank_product_compatibility = TankProductCompatibility.new
  end

  # GET /tank_product_compatibilities/1/edit
  def edit
  end

  # POST /tank_product_compatibilities
  # POST /tank_product_compatibilities.json
  def create
    @tank_product_compatibility = TankProductCompatibility.new(tank_product_compatibility_params)

    respond_to do |format|
      if @tank_product_compatibility.save
        format.html { redirect_to @tank_product_compatibility, notice: 'Tank product compatibility was successfully created.' }
        format.json { render :show, status: :created, location: @tank_product_compatibility }
      else
        format.html { render :new }
        format.json { render json: @tank_product_compatibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tank_product_compatibilities/1
  # PATCH/PUT /tank_product_compatibilities/1.json
  def update
    respond_to do |format|
      if @tank_product_compatibility.update(tank_product_compatibility_params)
        format.html { redirect_to @tank_product_compatibility, notice: 'Tank product compatibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @tank_product_compatibility }
      else
        format.html { render :edit }
        format.json { render json: @tank_product_compatibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tank_product_compatibilities/1
  # DELETE /tank_product_compatibilities/1.json
  def destroy
    @tank_product_compatibility.destroy
    respond_to do |format|
      format.html { redirect_to tank_product_compatibilities_url, notice: 'Tank product compatibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tank_product_compatibility
      @tank_product_compatibility = TankProductCompatibility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tank_product_compatibility_params
      params.require(:tank_product_compatibility).permit(:tank_id, :product_id)
    end
end
